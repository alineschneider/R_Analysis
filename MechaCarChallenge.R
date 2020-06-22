library(tidyverse)
# MPG Regression
mechaCar_prototypes <- read.csv("Resources/MechaCar_mpg.csv",check.names=T,stringsAsFactors = F)
lm(mpg ~ vehicle.length + vehicle.weight + spoiler.angle + ground.clearance + AWD, data=mechaCar_prototypes)
summary(lm(mpg ~ vehicle.length + vehicle.weight + spoiler.angle + ground.clearance + AWD, data=mechaCar_prototypes))

cor(mechaCar_prototypes$ground.clearance,mechaCar_prototypes$mpg)
cor(mechaCar_prototypes$vehicle.length,mechaCar_prototypes$mpg)


# Suspension Coil Summary
suspension_coil <- read.csv("Resources/Suspension_Coil.csv",check.names=T,stringsAsFactors = F)
summary(suspension_coil$PSI)
var(suspension_coil$PSI,na.rm = FALSE)
sd(suspension_coil$PSI,na.rm = FALSE)


# Suspension Coil T-Test
ggplot(suspension_coil,aes(x=PSI)) + geom_density()
t.test(suspension_coil$PSI,mu=1500)


