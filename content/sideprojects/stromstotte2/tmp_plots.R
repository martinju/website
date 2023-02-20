# PRISPLOT

dt_plotprice <- dt_hourly[,.(tp,area,date,start_hour,year,month,
                             price,mean_price,current_real_price,new_real_price1,actual_price)]
setnames(dt_plotprice,
         c("price","mean_price","current_real_price","new_real_price1","actual_price"),
         c("spotpris",
           "månedlig_gjennomsnittlig_spotpris",
           "pris_nåværende_ordning",
           "pris_ny_ordning",
           "pris_daværende_ordning"))


melt_dt_plotprice <- melt(dt_plotprice,
                          id.vars = c("tp","area","date","start_hour","year","month"))
melt_dt_plotprice[,variable:=factor(variable,levels=c("månedlig_gjennomsnittlig_spotpris",
                                                      "spotpris",
                                                      "pris_daværende_ordning",
                                                      "pris_nåværende_ordning",
                                                      "pris_ny_ordning"))]


ggplot(melt_dt_plotprice[month%in%1:12],aes(x=tp,y=value,col=variable))+
  geom_line()+
  facet_wrap(vars(area),scales="free",ncol=1)+
  theme(legend.position = "bottom")+
  ylab("NOK/kWh")+
  xlab("Tidspunkt")

gg_pris_list <- list()
for(i in 1:5){
  this <- paste0("NO",i)
  gg_pris_list[[i]] <- ggplot(melt_dt_plotprice[area==this],aes(x=tp,y=value,col=variable))+
    geom_line()+
    facet_wrap(vars(month),scales="free",labeller = label_both)+
    theme(legend.position = "bottom")+
    ylab("NOK/kWh")+
    xlab("Tidspunkt")+
    ggtitle(paste0("Priser per måned prisområde ",this))

}

pdf("DN/timespris_ulike_ordninger.pdf",width = 12,height = 8)
for(i in 1:5){
  print(gg_pris_list[[i]])
}
dev.off()





###################


dt_plotcost <- dt_cost_month[,.(area,month,
                                consumer_cost_current,consumer_cost_new1,consumer_cost_actual)]

setnames(dt_plotcost,
         c("consumer_cost_current","consumer_cost_new1","consumer_cost_actual"),
         c("nåværende_ordning",
           "ny_ordning",
           "daværende_ordning"))


melt_dt_plotcost <- melt(dt_plotcost,
                         id.vars = c("area","month"))
melt_dt_plotcost[,variable:=factor(variable,levels=c("daværende_ordning",
                                                     "nåværende_ordning",
                                                     "ny_ordning"))]

ggplot(melt_dt_plotcost,aes(x=month,y=value,col=variable))+
  geom_line()+
  geom_point()+
  facet_wrap(vars(area),scales="free")+
  theme(legend.position = "bottom")+
  ylab("NOK")+
  xlab("Måned")+
  ggtitle("Husholdningskostnad per måned for gjennomsnittshusholdning")

ggsave("DN/Husholdningskostnad_per_måned.pdf",width = 12,height=8)


##### KOMPENSASJON ####

dt_plotcost2 <- dt_cost_month[,.(area,month,
                                 tot_comp_current,tot_comp_new1,tot_comp_actual)]

setnames(dt_plotcost2,
         c("tot_comp_current","tot_comp_new1","tot_comp_actual"),
         c("nåværende_ordning",
           "ny_ordning",
           "daværende_ordning"))


melt_dt_plotcost2 <- melt(dt_plotcost2,
                          id.vars = c("area","month"))
melt_dt_plotcost2[,variable:=factor(variable,levels=c("daværende_ordning",
                                                      "nåværende_ordning",
                                                      "ny_ordning"))]

ggplot(melt_dt_plotcost2,aes(x=month,y=value,col=variable))+
  geom_line()+
  geom_point()+
  facet_wrap(vars(area),scales="free")+
  theme(legend.position = "bottom")+
  ylab("NOK")+
  xlab("Måned")+
  ggtitle("Kompensasjon per måned for gjennomsnittshusholdning")

ggsave("DN/Kompensasjon_per_måned.pdf",width = 12,height=8)



#### Besparelse med ny ordning (kontra daværende og nåværende)

dt_plotcost3 <- dt_cost_month[,.(area,month,
                                 besparelse_ny_vs_daværende,besparelse_ny_vs_nåværende)]

setnames(dt_plotcost3,
         c("besparelse_ny_vs_daværende","besparelse_ny_vs_nåværende"),
         c("ny_vs_daværende",
           "ny_vs_nåværende"))


melt_dt_plotcost3 <- melt(dt_plotcost3,
                          id.vars = c("area","month"))
melt_dt_plotcost3[,variable:=factor(variable,levels=c("ny_vs_daværende",
                                                      "ny_vs_nåværende"))]

ggplot(melt_dt_plotcost3,aes(x=month,y=value,col=variable))+
  geom_line()+
  geom_point()+
  facet_wrap(vars(area),scales="free")+
  theme(legend.position = "bottom")+
  ylab("NOK")+
  xlab("Måned")+
  ggtitle("Besparelse per måned for gjennomsnittshusholdning")

ggsave("DN/Besparelse_per_måned.pdf",width = 12,height=8)

##### Tabellplott

library(gridExtra)
pdf("DN/årstotal_kompensasjon.pdf", width=10,height=4)
grid.table(dt_cost_year[,.(area,kompensasjon_nåværende_ordning, kompensasjon_ny_ordning, kompensasjon_daværende_ordning)])
dev.off()

library(gridExtra)
pdf("DN/årstotal_husholdningskostnad.pdf", width=12,height=4)
grid.table(dt_cost_year[,.(area,husholdningskostnad_nåværende_ordning, husholdningskostnad_ny_ordning, husholdningskostnad_daværende_ordning )])
dev.off()

library(gridExtra)
pdf("DN/årstotal_besparelse.pdf", width=10,height=4)
grid.table(dt_cost_year[,.(area,besparelse_ny_vs_daværende, besparelse_ny_vs_nåværende )])
dev.off()



#####

dt_plot_vol_besparelse <- merge(dt_cost_month[,.(area,month,besparelse_ny_vs_daværende, besparelse_ny_vs_nåværende)],dt_vol,by=c("area","month"))

ggplot(dt_plot_vol_besparelse,aes(x=volatilitet,y=besparelse_ny_vs_daværende))+
  geom_point()+
  geom_smooth()+
  ggtitle("Månedlig besparelse (kontra daværende ordning) vs volatilitet i spotpris")

ggsave("DN/besparelse_vs_volatilitet.pdf",width=12,height=8)
