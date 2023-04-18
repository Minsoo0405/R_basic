# area installed wifi 

# working derectory
getwd()
setwd("/Users/kimminsoo/Desktop/R_basic")
getwd()

# install and apply package
install.packages("ggplot2")
install.packages("ggmap")
install.packages("stringr")
install.packages("dplyr")
library(ggplot2)
library(ggmap)
library(stringr)
library(dplyr)

# load csv file
wifi_data <- read.csv("wifi.csv", header = T, fileEncoding = "euc-kr")
head(wifi_data)

# labeling
wifi_data2 <- wifi_data[,c(1,4,5)]
head(wifi_data2)

names(wifi_data2) <- c("name", "x.point", "y.point")
head(wifi_data2)

wifi_data3 <- wifi_data2 %>% filter(
  name == "동작구"
)

qmplot(x.point, y.point, data = wifi_data3, 
       maptype = "toner-lite", color=I("red"))



