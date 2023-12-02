# load heights data
library(tidyverse)
library(dslabs)
library(gridExtra)
data(heights)

p <- heights %>% filter(sex == 'Male') %>%
  ggplot(aes(x = height))

# Here we create a histogram
p + geom_histogram(binwidth = 1, fill = 'blue', col = 'black')+
  xlab("More heights in inches")+
  ggtitle("Histogram")


p + geom_density(fill = 'blue')

#Here we create a qqplot
p <- heights %>% filter(sex == 'Male') %>%
  ggplot(aes(sample = height))
p + geom_qq()

params = heights %>% filter(sex == 'Male') %>% 
  summarize(mean = mean(height), sd = sd(height))

p + geom_qq(dparams = params) +
  geom_abline()

#Here we create grids


p = heights %>% filter(sex == 'Male') %>% ggplot(aes(x = height))
p1 = p + geom_histogram(binwidth = 1, fill = 'blue', col = 'black')
p2 = p + geom_histogram(binwidth = 1, fill = 'blue', col = 'black')
p3 = p + geom_histogram(binwidth = 1, fill = 'blue', col = 'black')

grid.arrange(p1, p2, p3, ncol = 3)

















