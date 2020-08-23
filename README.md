# R_Analysis

## Project Description
The project consisted of performing statistical tests to create a technical report for the AutosRUs' MechaCar product development team to justify design choices.

## Resources
- Data source:
    - MechaCar_mpg.csv
    - Suspension_Coil.csv
- Technologies: R version 4.0.1, RStudio, Visual Studio Code 1.43.1

## MPG Regression
__H0__: The slope of the linear model is zero, or m = 0\
__Ha__: The slope of the linear model is not zero, or m ≠ 0\

If slope of 0 -> no significant linear relationship: dependent values determined by random chance and error.

__Coefficients:__
| Intercept | vehicle.length | vehicle.weight | spoiler.angle | ground.clearance | AWD |
| ------ | ------ | ------ | ------ | ------ | ------ |
| -1.040e+02 | 6.267e+00 | 1.245e-03 | 6.877e-02 | 3.546e+00 | -3.411e+00 |

__Coefficients:__
| Variable | Estimate | Std. Error | t value | Pr(>|t|) |
| ------ | ------ | ------ | ------ | ------ |
| (Intercept) | -1.040e+02 | 1.585e+01 | -6.559 | 5.08e-08 |
| vehicle.length | 6.267e+00 | 6.553e-01 | 9.563 | 2.60e-12 |
| vehicle.weight | 1.245e-03 | 6.890e-04 | 1.807 | 0.0776 |
| spoiler.angle | 6.877e-02 | 6.653e-02 | 1.034 | 0.3069 |
| ground.clearance | 3.546e+00 | 5.412e-01 | 6.551 | 5.21e-08 |
| AWD | -3.411e+00 | 2.535e+00 | -1.346 | 0.1852 |

__Multiple R-squared:__  0.7149\
__Adjusted R-squared:__  0.6825\
__p-value:__ 5.35e-11

The p-value is 5.35e-11, which is much smaller than the assumed significance level of 0.05. Therefore, we can state that there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is not zero.

__Vehicle length__ and __Ground clearance__ are statistically unlikely to provide random amounts of variance to the linear model, they have a significant impact on mpg and provide a significant contribution to the model.

__Intercept__ is also a statistically significant, which means that there are other variables and factors that contribute to the variation in mpg that have not been included in the model.

The r-squared value is 0.71, which means that roughly 71% the mpg predictions using this linear model will be correct.

This is an effective model for predicting the mpg of MechaCar prototypes, however, it could possibly be improved by the introduction of other variables that could increase the R-squared value. 

## Suspension Coil Summary
__PSI:__
| Measure | Value |
| ------ | ------ |
| Min. | 1452 |
| 1st Qu. | 1498 |
| Median | 1500 |
| Mean | 1499 |
| 3rd Qu. | 1501 |
| Max. | 1542 |

__Mean:__ 1499\
__Median:__ 1500\
__Variance:__ 62.29356\
__Standard deviation:__ 7.892627

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per inch. The current manufacturing data meets the design specification, with a variance of 62.3 pounds per inch.

## Suspension Coil T-Test
Applying the one-sample t-test to assess if there is a statistical difference between the mean of the sample dataset and the mean of the hypothesized, potential population dataset.

__H0__ : There is no statistical difference between the observed sample mean and its presumed population mean.\
__Ha__ : There is a statistical difference between the observed sample mean and its presumed population mean.

__One Sample t-test__\
data: suspension_coil$PSI\
t = -1.8931, df = 149, p-value = 0.06028\
alternative hypothesis: true mean is not equal to 1500\
95 percent confidence interval: 1497.507 1500.053
sample estimates: mean of x 1498.78 

Assuming our significance level was the common 0.05, our p-value (0.06028) is above our significance level. Therefore, we do not have sufficient evidence to reject the null hypothesis, and we would state that the two means are statistically similar.

## Custom Study
A comparative study could be designed based on a t-Test, which would compare the MechaCar prototype vehicles 
to other comparable vehicles on the market, for each metric of interest. 

__Metrics:__
- Cost
- Fuel Efficiency
- MPG
- Horsepower

__Statistical Test__
Is there a difference between the prototype metric and the market metric?\
__H0__ : There is no statistical difference between the prototype sample mean and the market mean.\
__Ha__ : There is a statistical difference between the prototype sample mean and the market mean.

The collected data for the market vehicles and prototypes should match the metrics chosen for the study.

