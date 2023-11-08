library(dslabs)
data(heights)

summary(heights$height) #To find out the quartiles 

p = seq(0.01, 0.99, 0.01) # Here we find the percentiles
percentiles = quantile(heights$height, p)

percentiles[names(percentiles) == "25%"] #Confirm that the 25th and 75th percentiles match the 1st and 3rd quartiles. Note that quantile() returns a named vector. You can access the 25th and 75th percentiles like this (adapt the code for other percentile values):
percentiles[names(percentiles) == "75%"]



theoretical_quantiles <- qnorm(p, 69, 3)


# Datacamp Exercises

library(dslabs)
data(heights)
male <- heights$height[heights$sex=="Male"]
female <- heights$height[heights$sex=="Female"]
female_percentiles = quantile(female, seq(.10,.90, by = 0.2)) #10th 30th 50th 70th 90th percentile
male_percentiles = quantile(male, seq(.10,.90, by = 0.2))
df = data.frame(female = female_percentiles, male = male_percentiles) #a data.frame