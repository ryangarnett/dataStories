library(tidyverse)
library(plyr)
library(maptools)
setwd("~/spatialData/wellBeing")

# Read shapefile using sppackage
library(sp)
library(rgdal)
sp_test <- readOGR(dsn = ".", layer = "NEIGHBOURHOODS")

# Plot shapefile
plot(sp_test, col = "#AA4371", border = "black", lwd = 1, main = "sf plot test")

summary(sp_test)


# Read shapefile with sf package
library(sf)
library(raster)
sf_test <- st_read("NEIGHBOURHOODS.shp")


mapSales <- read_csv("~/Github/dataStories/MapSales20180320.csv")
mapSales
