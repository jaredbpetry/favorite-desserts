# --- find out whether your favorite dessert is one of Americas most iconic desserts

# --- Libraries

library(tidyverse)
library(here)
library(janitor)
library(dplyr)

# --- read in each of the csv files

our_desserts <- read_csv(here::here("data", "favorite_desserts.csv"))
iconic_desserts <- read_csv(here::here("data", "iconic_desserts.csv"))

# try clean names
clean_fav <- our_desserts %>%
  clean_names()


# --- mutate the column to match

#our_desserts <- our_desserts %>%
  #rename(dessert = Favorite_dessert)

both_desserts <- inner_join(our_desserts, iconic_desserts)

