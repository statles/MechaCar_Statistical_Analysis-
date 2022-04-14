library(dplyr)
install.packages("tidyverse")

mechaCar_mgp <- read.csv('../MechaCar_mpg.csv', check.names=F, stringsAsFactors = F) #import mechacar_mpg

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechaCar_mgp) #generate multiple linear regression model

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechaCar_mgp))
