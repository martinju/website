
library(data.table)
library(ggplot2)
Sys.setlocale(locale='nb_NO.utf8')

# Doing everything before mva, and adding that in the end.

path <- "https://raw.githubusercontent.com/martinju/stromstotte/master/"


### Helper functions
compfunc <- function(avgprice,compensation_threshold,compensation_prop){
  ifelse(avgprice<=compensation_threshold,
         yes = avgprice*0,
         no = (avgprice-compensation_threshold)*compensation_prop)

}


current_comp_thres= 0.7
current_comp_prop = 0.90

actual_comp_thres = 0.7
actual_comp_prop_per_month = c(rep(0.8,8),rep(0.9,4))

# Egen fil uten mva
dt_hourly <- fread(file.path(path,"data/database_nordpool_hourly_2022_no_mva.csv"))

dt_hourly[is.na(price),price:=0]

dt_hourly[,year:=year(date)]
dt_hourly[,month:=month(date)]
dt_hourly[,mean_price:=mean(price),by=.(area,month)]


### Defining a few differnet price variants

# Dagens månedsbaserte system
dt_hourly[,current_comp:=compfunc(mean_price,current_comp_thres,current_comp_prop)]
dt_hourly[,current_real_price:=price-current_comp]

# Timebasert, men med samme innslag og kompensasjonsgrad
new_comp_thres1 <- 0.70
new_comp_prop1 <- 0.90

dt_hourly[,new_comp1:=compfunc(price,new_comp_thres1,new_comp_prop1)]
dt_hourly[,new_real_price1:=price-new_comp1]

# Samme kostnad for okt-des
new_comp_thres2 <- 0.70
new_comp_prop2 <- 0.90*0.8935035 # kompensasjonsgrad 0.80 istedet for 0.90

dt_hourly[,new_comp2:=compfunc(price,new_comp_thres2,new_comp_prop2)]
dt_hourly[,new_real_price2:=price-new_comp2]

# Samme kostnad for okt-des
new_comp_thres3 <- 0.70*1.2432324 # Innslag på 87 ør før moms (109 øre etter moms)
new_comp_prop3 <- 0.90

dt_hourly[,new_comp3:=compfunc(price,new_comp_thres3,new_comp_prop3)]
dt_hourly[,new_real_price3:=price-new_comp3]

# Månedsbasert med ordningn i den måneden i 2022 de ulike variantene gjaldt
for(i in 1:12){
  dt_hourly[month==i,actual_comp:=compfunc(mean_price,actual_comp_thres,actual_comp_prop_per_month[i])]
  dt_hourly[,actual_price:=price-actual_comp]
}

cols <- names(dt_hourly)[-c(1:3,5:6)]
dt_hourly[area!="NO4",(cols):=lapply(.SD,function(x) x*1.25),.SDcols=cols]

dt_hourly[,tp:=as.POSIXct(date)+start_hour*60*60]

dt_actual_comp_prop_per_month <- data.table(month=1:12,actual_comp2=actual_comp_prop_per_month)

#dt_hourly <- merge(dt_hourly,dt_actual_comp_prop_per_month,by="month")


dt_timesforbruk <- fread(file.path(path,"raw-data/timesforbruksdata_csv.csv"),dec = ",")
dt_dagsforbruk <- fread(file.path(path,"raw-data/Daglig-forbruk-husholdning.csv"))
dt_dagsforbruk <- dt_dagsforbruk[Gruppe=="Husholdning"]

names(dt_dagsforbruk)[1] <- "Antall_maalepunkter"
dt_dagsforbruk[,avg_forbruk_kWh:=`Volum (MWh)`/`Antall_maalepunkter`*1000]
dt_dagsforbruk[,dato:=as.IDate(Bruksdogn,format="%d.%m.%Y")]
dt_dagsforbruk[,is_weekend:=(wday(dato) %in% c(1,7))]

dt_timesforbruk_long <- rbind(dt_timesforbruk[,.(Time,andel_per_time=Prosentfordeling_helg,is_weekend=TRUE)],
                              dt_timesforbruk[,.(Time,andel_per_time=Prosentfordeling_ukedag,is_weekend=FALSE)])

dt_forbruk <- merge(dt_dagsforbruk[dato>="2022-01-01",.(Prisomraade,dato,avg_forbruk_kWh,is_weekend)],dt_timesforbruk_long,by="is_weekend",allow.cartesian = T)

setcolorder(dt_forbruk,c("Prisomraade","Time","dato"))
dt_forbruk[,forbruk_per_time:=avg_forbruk_kWh*andel_per_time]
dt_forbruk[,tp:=as.POSIXct(dato)+(Time-1)*60*60]


#### Computing cost with different compensation methods:

dt_cost <- merge(dt_hourly[,.(area,tp,
                              current_comp,current_real_price,
                              new_comp1,new_real_price1,
                              new_comp2,new_real_price2,
                              new_comp3,new_real_price3,
                              actual_comp,actual_price)],
                 dt_forbruk[,.(area=Prisomraade,tp,forbruk_per_time)],
                 by=c("area","tp"))

dt_cost[,consumer_cost_current := current_real_price*forbruk_per_time]
dt_cost[,consumer_cost_new1 := new_real_price1*forbruk_per_time]
dt_cost[,consumer_cost_new2 := new_real_price2*forbruk_per_time]
dt_cost[,consumer_cost_new3 := new_real_price3*forbruk_per_time]
dt_cost[,consumer_cost_actual := actual_price*forbruk_per_time]

dt_cost[,tot_comp_current := current_comp*forbruk_per_time]
dt_cost[,tot_comp_new1 := new_comp1*forbruk_per_time]
dt_cost[,tot_comp_new2 := new_comp2*forbruk_per_time]
dt_cost[,tot_comp_new3 := new_comp3*forbruk_per_time]
dt_cost[,tot_comp_actual := actual_comp*forbruk_per_time]
dt_cost[,month:=month(tp)]

dt_cost_month <- dt_cost[,lapply(.SD,sum),.SDcols=c("consumer_cost_current","consumer_cost_new1","consumer_cost_new2","consumer_cost_new3","consumer_cost_actual",
                                                    "tot_comp_current","tot_comp_new1","tot_comp_new2","tot_comp_new3","tot_comp_actual"),
                         by=.(month,area)]


dt_cost_month[,besparelse_ny_vs_daværende := tot_comp_new1-tot_comp_actual]
dt_cost_month[,besparelse_ny_vs_nåværende := tot_comp_new1-tot_comp_current]



### Tabell med summen over året for kostand, kompensasjon og besparelse per område

dt_cost_year <- dt_cost_month[,lapply(.SD,sum),.SDcols=c("tot_comp_current","tot_comp_new1","tot_comp_actual",
                                                         "consumer_cost_current","consumer_cost_new1","consumer_cost_actual",
                                                         "besparelse_ny_vs_daværende","besparelse_ny_vs_nåværende"),
                              by=.(area)]
setnames(dt_cost_year,
         c("tot_comp_current","tot_comp_new1","tot_comp_actual"),
         c("kompensasjon_nåværende_ordning",
           "kompensasjon_ny_ordning",
           "kompensasjon_daværende_ordning"))

setnames(dt_cost_year,
         c("consumer_cost_current","consumer_cost_new1","consumer_cost_actual"),
         c("husholdningskostnad_nåværende_ordning",
           "husholdningskostnad_ny_ordning",
           "husholdningskostnad_daværende_ordning"))


#### besparelse vs svingning i spotpris per måned per omr

dt_vol <- dt_hourly[,list(volatilitet=sd(price)),by=.(area,month)]

