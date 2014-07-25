library(shiny)
library(leaflet)
library(dplyr)


county_data <- readRDS("data/data.rds")
extra_data <- readRDS("data/extras.rds")
fillColors <- extra_data$colors
leg_txt <- extra_data$legend
fill_name <- extra_data$old
tile <- extra_data$bg_tile
if (is.na(tile)) tile <- NULL
attr <- extra_data$bg_attr
if (is.na(attr)) attr <- NULL
county_polygons <- read.csv("data/fips_polygons.csv", stringsAsFactors = F)

comp_two <- merge(county_polygons, county_data, by = "fips", all.x = T)
comp_two <- comp_two %>% arrange(group, order)





    