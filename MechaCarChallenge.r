### Use the library() function to load the dplyr package.
install.packages("tidyverse")
library(tidyverse)


# Import and read in the MechaCar_mpg.csv file as a dataframe.
MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv', check.names=F, stringsAsFactors = F)
head(MechaCar_mpg)


# Perform linear regression using the lm() function. In the lm() function, pass in all six variables (i.e., columns), and add the dataframe you created in Step 4 as the data parameter.
Mecha_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data =  mecha_data)
head(Mecha_lm)

# Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(Mecha_lm)


# Download the Suspension_Coil.csv file, and place it in the active directory for your R session.
suspension_data <- read.csv(file='Suspension_Coil.csv', check.names=F, stringsAsFactors = F)
head(suspension_data)

#bIn your MechaCarChallenge.RScript, import and read in the Suspension_Coil.csv file as a table.

# Write an RScript that creates a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil's PSI column.
total_summary <- suspension_data %>% 
  summarise(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))


# Your total_summary dataframe should look like this:
total_summaryG <- suspension_data %>% group_by(Manufacturing_Lot) %>%
  summarise(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups='keep')

# Write an RScript that creates a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil's PSI column.

# Perform t-test across all lots
t.test(suspension_data$PSI,mu = 1500)


# Perform t-test on Lot 1
t.test(subset(suspension_data,Manufacturing_Lot=="Lot1")$PSI,mu = 1500)
 
 
# Perform t-test on Lot 2
t.test(subset(suspension_data,Manufacturing_Lot=="Lot2")$PSI,mu = 1500)


# Perform t-test on Lot 3
t.test(subset(suspension_data,Manufacturing_Lot=="Lot3")$PSI,mu = 1500)


