library(dplyr)
install.packages("tidyverse")

mechaCar_mgp <- read.csv('../MechaCar_mpg.csv', check.names=F, stringsAsFactors = F) #import mechacar_mpg

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechaCar_mgp) #generate multiple linear regression model

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechaCar_mgp)) #summary table of lm

mechaCar_suspension <- read.csv('../Suspension_Coil.csv', check.names=F, stringsAsFactors = F) #import suspension coil data

total_summary <- mechaCar_suspension %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI)) #summary of PSI

lot_summary <- mechaCar_suspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))#summary of PSI by lots

?summarise()
?summary()

?t.test()

#write a t-test to see if PSI across all mfg lots is sig diff from population mean (1500PSI)
t.test(mechaCar_suspension$PSI, mu=1500)

Lot1 <- mechaCar_suspension %>% filter(Manufacturing_Lot=='Lot1')
Lot2 <- mechaCar_suspension %>% filter(Manufacturing_Lot=='Lot2')
Lot3 <- mechaCar_suspension %>% filter(Manufacturing_Lot=='Lot3')

#write a t-test for each mfg lot to see if its PSI is sig diff from population mean (1,500lbs/in^2)
t.test(PSI ~ 1500, data=mechaCar_suspension, subset=(Manufacturing_Lot))

t.test(mechaCar_suspension$PSI, mu=1500, subset=(mechaCar_suspension$Manufacturing_Lot=='Lot1'))
t.test(mechaCar_suspension$PSI, mu=1500, subset=(mechaCar_suspension$Manufacturing_Lot=='Lot2'))
t.test(mechaCar_suspension$PSI, mu=1500, subset=(mechaCar_suspension$Manufacturing_Lot=='Lot3'))
