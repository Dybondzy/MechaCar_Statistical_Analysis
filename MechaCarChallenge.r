### Use the library() function to load the dplyr package.
install.packages("tidyverse")
library(tidyverse)


# Import and read in the MechaCar_mpg.csv file as a dataframe.
MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv', check.names=F, stringsAsFactors = F)
head(MechaCar_mpg)


# Perform linear regression using the lm() function. In the lm() function, pass in all six variables (i.e., columns), and add the dataframe you created in Step 4 as the data parameter.
Mech_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data =  mecha_data)


# Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(Mecha_lm)


# Save your MechaCarChallenge.RScript file to your GitHub repository.



# Download the Suspension_Coil.csv file, and place it in the active directory for your R session.
Suspension_coil <- read.csv(file='Suspension_Coil.csv', check.names=F, stringsAsFactors = F)


#bIn your MechaCarChallenge.RScript, import and read in the Suspension_Coil.csv file as a table.
total_summary <- Suspension_coil %>%
  summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))


# Write an RScript that creates a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil's PSI column.
total_summary <- Suspension_coil %>% group_by(Manufacturing_Lot) %>%
  summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups='keep')
  



# Your total_summary dataframe should look like this:
# Write an RScript that creates a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil's PSI column.

# Perform t-test across all lots
t.test(suspension_data$PSI,mu = 1500)


# Perform t-test on Lot 1
t.test(subset(suspension_data,Manufacturing_Lot=="Lot1")$PSI,mu = 1500)
 
 
# Perform t-test on Lot 2
t.test(subset(suspension_data,Manufacturing_Lot=="Lot2")$PSI,mu = 1500)


# Perform t-test on Lot 3
t.test(subset(suspension_data,Manufacturing_Lot=="Lot3")$PSI,mu = 1500)



# Your lot_summary dataframe should look like this:
# Save your MechaCarChallenge.RScript file to your GitHub repository.

