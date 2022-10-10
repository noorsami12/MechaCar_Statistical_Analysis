# MechaCar Statistical Analysis

## Linear Regression to Predict MPG

Five variables were charted on a linear regression against the MPG: AWD, ground clearance, spoiler angle, vehicle weight, and vehicle length. Of the five variables, two provide a non-random amount of variance to the MPG values: ground clearance and vehicle length. Both variables are 0.001 in terms of significance value. 

The slope of the linear model is -104, so it is not considered to be zero. This slope indicates a negative relationship between variables. 

The linear regression is an effective predictor of MechaCar prototypes because it singles out variables that are significant so that they can be further looked at and analyzed. The linear regression is a good starting point to expand on with further modeling. 

![summarystats](https://github.com/noorsami12/MechaCar_Statistical_Analysis/blob/9fd3cae7f76d926db84252bcbab404eae0ffb138/deliverable1_summarystats.png)


## Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. After running summary statistics on the total data, as well as per each manufacturing lot, it becomes apparent that the design specification is met everywhere except in Lot 3, where it reaches 170.29. In total, the specification is met at 62.29, and it is met with Lot1 at 0.97 and Lot 2 at 7.47.

![lotsummary_df](https://github.com/noorsami12/MechaCar_Statistical_Analysis/blob/9fd3cae7f76d926db84252bcbab404eae0ffb138/lotsummary_df.png)
![totalsummary_df](https://github.com/noorsami12/MechaCar_Statistical_Analysis/blob/9fd3cae7f76d926db84252bcbab404eae0ffb138/totalsummary_df.png)


## T-Tests on Suspension Coils

Four two sample t-tests were conducted on the mean of the lot summary as a whole and then each individual lot as well. The standard p-value is 0.05. The overall lot summary gave us a p-value of 7.669e-07, which is far less than the expected 0.05; in other words, we can reject the null hypothesis, as there is a statistical difference between the two observed sample means. Each individual lot t-test also resulted in rejecting the null hypotheses with significant statistical difference between the observed sample means. 

![ttest_all](https://github.com/noorsami12/MechaCar_Statistical_Analysis/blob/9fd3cae7f76d926db84252bcbab404eae0ffb138/ttest_all.png)
![ttest_lot1](https://github.com/noorsami12/MechaCar_Statistical_Analysis/blob/9fd3cae7f76d926db84252bcbab404eae0ffb138/ttest_lot1.png)
![ttest_lot2](https://github.com/noorsami12/MechaCar_Statistical_Analysis/blob/9fd3cae7f76d926db84252bcbab404eae0ffb138/ttest_lot2.png)
![ttest_lot3](https://github.com/noorsami12/MechaCar_Statistical_Analysis/blob/9fd3cae7f76d926db84252bcbab404eae0ffb138/ttest_lot3.png)


## Study Design: MechaCar vs Competition

In order to quantify how the MechaCar performs against the competition, this study would look at horse power versus safety rating. The null hypothesis would be that there is no statistical significance when comparing horse power to safety rating. The alternative hypothesis is that there is a statistical significance when comparing horse power to safety rating, and horse power has a negative correlation to safety rating. The study would use a two-sample t-test to test the hypothesis because of the dichotomous data type. In order to run the test, we would need data on safety rating for cars as well as their horse power. 




