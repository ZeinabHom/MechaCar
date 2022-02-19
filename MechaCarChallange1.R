
library(dplyr)

MechaCar <- read.csv(file="MechaCar_mpg.csv")

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance,data=MechaCar)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance,data=MechaCar))


Suspension <- read.csv(file="Suspension_Coil.csv")

t0tal_summery <- Suspension %>% summarise( mean=mean(PSI), median=median(PSI), variance=var(PSI),sd=sd(PSI))

group_lot <- Suspension %>% group_by(Manufacturing_Lot) %>% summarise( mean=mean(PSI), median=median(PSI), variance=var(PSI),sd=sd(PSI))


t.test(Suspension$PSI, mu=mean(1500))

subset(Suspension, Manufacturing_Lot == 'Lot1')$PSI
subset(Suspension, Manufacturing_Lot == 'Lot2')$PSI
subset(Suspension, Manufacturing_Lot == 'Lot3')$PSI


t.test(((subset(Suspension, Manufacturing_Lot == 'Lot1'))$PSI),mu=mean(1500))
t.test(((subset(Suspension, Manufacturing_Lot == 'Lot2'))$PSI),mu=mean(1500))
t.test(((subset(Suspension, Manufacturing_Lot == 'Lot3'))$PSI),mu=mean(1500))