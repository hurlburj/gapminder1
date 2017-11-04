library("tidyverse")
library("dplyr")

download.file("http://fmichonneau.github.io/2017-11-03-gwu/gapminder.csv",
              "data/gapminder.csv")

gapminder <- read_csv(data/gapminder.csv)

##Calculate average life expectancy by continent

life_exp_continent <- gapminder %%
  group_by(continent) %%
  summarise(
    mean_life_exp = mean(lifeExp)
  )

