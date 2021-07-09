## @knitr setupz

# define knitr options
knitr::opts_chunk$set(echo = FALSE)
knitr::opts_chunk$set(warning = FALSE)
knitr::opts_chunk$set(message = FALSE)

# set any missing NAs in tables to blank
options(knitr.kable.NA='')

# load R packages
library(fivethirtyeight)
library(tidyverse)
library(knitr)
library(kableExtra)
library(ggthemes)

## @knitr loadData

# load weather_check dataset
data("weather_check", package="fivethirtyeight")

# create a subset remove omit NAs
# pick a specific region
sdat <- weather_check %>%
  #  mutate(hhold_income = fct_drop(hhold_income)) %>%
  filter(region == params$region)

