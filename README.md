# MechaCar_Statistical_Analysis-
Analysis of cars by mpg and suspension coils using R

## Overview

## Linear Regression to Predict MPG
- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
  - Using the Pr(>|t|) values, ground clearance and vehicle weight provided a non-random amount of variance to the mpg values in the dataset. Using the linear model, ground clearane, vehicle weight, and AWD all have a non-zero slope, which means their values are not determined by random chance
![lm_deliverable1](https://user-images.githubusercontent.com/95397823/163735271-5c44ee2e-0f7b-4060-9692-f228d908360a.PNG)

- Is the slope of the linear model considered to be zero? Why or why not?
  - The p-value of our linear model is 5.35e-11, which is much smaller than our confidence level of 0.05. This means that the slope of our linear model is not zero.
- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
  - The linear model has an R-squared value of 0.7149, which means that the model is a strong predictor of the mpg of the MechaCar prototypes.
![lm_summary_deliverable1](https://user-images.githubusercontent.com/95397823/163735274-70de3d26-c71b-4a93-a5d0-39a483f287ef.PNG)


## Summary Statistics on Suspension Coils
- The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
  - At 62.2 PSI, the variance across all lots does not exceed 100 PSI, making the variance of the entire data set within spec. However, upon further inspection of each individual lot, Lot 1 and Lot 2 have a variance below 10, and Lot 3 has a variance of 170 PSI. This means that Lot 3 is not within spec and is skewing the data of the total lot summary

![total_summary_d2](https://user-images.githubusercontent.com/95397823/163736586-31bfb1f4-6049-4899-b544-185ae9c09c53.PNG)

The total lot summary shows a variance below 100.

![lot_summary_d2](https://user-images.githubusercontent.com/95397823/163736600-f57fb420-419b-4325-90b6-ecbfc356ebae.PNG)

The individual lot summary shows that the majority off the variance is coming from lot 3, which exceeds the 100 PSI variance specification.

## T-Tests on Suspension Coils
![t-test_deliverable3_alllots](https://user-images.githubusercontent.com/95397823/163735222-30000d28-58b2-4e09-bd68-48385f0b06f8.PNG)

 - The t-test for PSI returned a p-value of 0.06028, which is larger than our confidence interval of 0.05. Therefore, we do not have enough evidence to reject our null hypothesis. Therefore, our mean of 1498.78 PSI is not statistically different from the population mean of 1500 PSI.

## Study Design: MechaCar vs Competition
- To test how the MeachaCar performs agains the competition, we would gather the following metrics: horse power, mpg city, mpg highway, cost, fuel tank size, engine type, safety rating, and passenger capacity. We would perform a linear regression to see which metrics contribute significantly to the MechaCar's overall performance against other manufacturers. A few metrics that may be of interest to consumers is cost and safety rating. We would perform a one way ANOVA to determine if cost is statistically similar to the cost of cars from other manufacturers. The null hypothesis is that the cars all have a statistically equal cost. The alternative hypothesis is that the costs are statistically different.
