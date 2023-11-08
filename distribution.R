# load the dataset
library(dslabs)
data(heights)

# make a table of category proportions
prop.table(table(heights$sex))


#bar plot descibes distributions 

a <- seq(min(heights$height), max(heights$height), length = 100)    # define range of values spanning the dataset
cdf_function <- function(x) {    # computes prob. for a single value
  mean(heights$height <= x)
}
cdf_values <- sapply(a, cdf_function)
plot(a, cdf_values)

#Smooth density plots