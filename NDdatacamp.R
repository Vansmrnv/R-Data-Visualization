#Normal Dist. Datacampexercises 
library(dslabs)
data(heights)
x <- heights$height[heights$sex == "Male"]
#What proportion of the data is between 69 and 72 inches (taller than 69 but shorter or equal to 72)? A proportion is between 0 and 1.
mean(x>69 & x<=72)



#Remember you can estimate the proportion below 72 and subtract the proportion below 69
library(dslabs)
data(heights)
x <- heights$height[heights$sex=="Male"]
avg <- mean(x)
stdev <- sd(x)
pnorm(72, avg, stdev) - pnorm(69, avg, stdev)


#Difference between exact proportion and approximation in amount of times
library(dslabs)
data(heights)
x <- heights$height[heights$sex == "Male"]
exact <- mean(x > 79 & x <= 81)
approx = pnorm(81, mean(x), sd(x)) - pnorm(79, mean(x), sd(x))
exact/approx

# To calculate over instead of below a given value we do 1-pnorm()


p = 1 - pnorm(7*12, 69, 3) #Approx of how many people taller than 7 ft
N = round(p*10^9) #Taller than 7ft in 1 billion people
10/N #Proportion of all 10 NBA players higher than 7 ft to all men higher than 7 ft 