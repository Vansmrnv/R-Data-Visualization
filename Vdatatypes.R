Categorical = Ordinal or Non-ordinal

Numeric = Discrete or continuous or ordinal

#Datacamp exercises Visualization

library(dslabs)
data(heights)
tab <- table(heights$height)
sum(tab == 1) #number of times tab reported only once