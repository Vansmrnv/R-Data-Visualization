# basic scatterplot of life expectancy versus fertility
ds_theme_set()
scatterplot = filter(gapminder, year == 1962) %>% 
  ggplot(aes(fertility, life_expectancy))+
  geom_point()
print(scatterplot)


scatterplot = filter(gapminder, year == 1962) %>% 
  ggplot(aes(fertility, life_expectancy, color = continent))+
  geom_point()
print(scatterplot)