library("tidyverse")
library("dplyr")

gapminder <- read_csv("data/gapminder.csv")

testline
test2
##Calculate average life expectancy by continent

 life_exp_continent <- gapminder %>%
  group_by(continent) %>%
  summarise(
    mean_life_exp = mean(lifeExp)
  )

 life_exp_canada <- gapminder %>%
   filter(country == "Canada") %>%
   select(year, lifeExp)
 
 mean_gdp_continent <- gapminder %>%
   filter(year == 1972) %>%
   summarize(
     mean_gdp = mean(gdpPercap)
   )
 
 
