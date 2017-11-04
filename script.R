library("tidyverse")

 gapminder <- read_csv("data/gapminder.csv")

 life_exp_continent <- gapminder %>%
  group_by(continent) %>%
  summarize(
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
 
 pop_size_china <- gapminder %>%
   filter(country == "China") %>%
   select(year, pop)
 
 max_pop_size_2007 <- gapminder %>%
   filter(year == 2007) %>%
   group_by(country) %>%
   summarize(max_pop = max(pop))
 
