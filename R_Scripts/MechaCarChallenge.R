library(dplyr)
install.packages("tidyverse")

mechaCar_mgp <- read.csv('../MechaCar_mpg.csv', check.names=F, stringsAsFactors = F) #import mechacar_mpg

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechaCar_mgp) #generate multiple linear regression model

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechaCar_mgp)) #summary table of lm

mechaCar_suspension <- read.csv('../Suspension_Coil.csv', check.names=F, stringsAsFactors = F) #import suspension coil data

total_summary < - mechaCar_suspension %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI)) #summary of PSI --Doesnt work right now--

lot_summary <- mechaCar_suspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))#summary of PSI by lots

?summary()
