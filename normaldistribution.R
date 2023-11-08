#NORMAL DISTRIBUTION, Normal CDF and Pnorm()

library(tidyverse)
library(dslabs)
data(heights)
index <- heights$sex=="Male"
x <- heights$height[index]


average = mean(x)
SD = sd(x)
z = scale(x) #Standard Unit

#z = (x-average)/SD
#average = sum(x)/length(x)
#SD = sqrt(sum((x-average)^2)/length(x))

# calculate proportion of values within 2 SD of mean
mean(abs(z)<2)
     
#F(a) = pnorm(a, average, SD)  <= Probability formula   

#We can estimate the probability that a male is taller than 70.5 inches with:
1 - pnorm(70.5, mean(x), sd(x))



# plot distribution of exact heights in data
plot(prop.table(table(x)), xlab = "a = Height in inches", ylab = "Pr(x = a)")

# probabilities in actual data over length 1 ranges containing an integer
mean(x <= 68.5) - mean(x <= 67.5)
mean(x <= 69.5) - mean(x <= 68.5)
mean(x <= 70.5) - mean(x <= 69.5)

# probabilities in normal approximation match well
pnorm(68.5, mean(x), sd(x)) - pnorm(67.5, mean(x), sd(x))
pnorm(69.5, mean(x), sd(x)) - pnorm(68.5, mean(x), sd(x))
pnorm(70.5, mean(x), sd(x)) - pnorm(69.5, mean(x), sd(x))

# probabilities in actual data over other ranges don't match normal approx as well
mean(x <= 70.9) - mean(x <= 70.1)
pnorm(70.9, mean(x), sd(x)) - pnorm(70.1, mean(x), sd(x))