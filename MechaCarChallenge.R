# DELIVERABLE ONE

library(dplyr)

# import and read data
mechacar_mpg <- read.csv(file="MechaCar_mpg.csv")

# perform linear regression
lm(mpg ~ AWD + ground_clearance + spoiler_angle + vehicle_weight + vehicle_length,data=mechacar_mpg)

# generate summary statistics
summary(lm(mpg ~ AWD + ground_clearance + spoiler_angle + vehicle_weight + vehicle_length,data=mechacar_mpg))

# DELIVERABLE TWO 

# import and read data
suspension_coil <- read.csv(file="Suspension_Coil.csv")

# create total summary dataframe (mean, median, variance, std dv of psi)
total_summary <- summarize(suspension_coil, Mean = mean(PSI,na.rm=TRUE), Median = median(PSI, na.rm = TRUE),
          Variance = var(PSI, na.rm=TRUE), SD = sd(PSI, na.rm = TRUE))
total_summary <- data.frame(total_summary)
print(total_summary)

# creating lot summary dataframe grouping by manufacturing lot
lot_summary <- suspension_coil %>%
  group_by(Manufacturing_Lot) %>%
  summarize(Mean = mean(PSI), Median = median(PSI),
                     Variance = var(PSI), SD = sd(PSI), .groups = 'keep')
lot_summary <- data.frame(lot_summary)
print(lot_summary)

# DELIVERABLE THREE

# use t.test to determine if PSI across lots is statistically different
pop_mean = rnorm(1500)
t.test(lot_summary[['Mean']], pop_mean)

# t.tests for each separate lot
t.test(subset(suspension_coil,Manufacturing_Lot=="Lot1")$PSI, pop_mean)
t.test(subset(suspension_coil,Manufacturing_Lot=="Lot2")$PSI, pop_mean)
t.test(subset(suspension_coil,Manufacturing_Lot=="Lot3")$PSI, pop_mean)

