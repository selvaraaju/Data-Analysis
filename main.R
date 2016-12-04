# Program :  This program builds linear regression model between Australia's energy consumption and life expectancy
# Author  :  Selvaraaju Murugesan
# Date    :  28/11/2016
# Change Log : 4/12/2016 

# Data is loaded in master.csv file

# Loading the data
master <- read.csv("~/master.csv")
names(master)
summary(master)

# checking correlation 
cor(master$energy,master$LE)

#plotting the QQ Plot
qqplot(master$energy,master$LE,xlab = "Energy",ylab = "Life Expectancy")

#Building a linear model
model1 <- lm(master$energy ~ master$LE)

# Checking model paramters
summary(model1)
