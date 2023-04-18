# traffic accident data
getwd()
setwd("/Users/kimmminsoo/Desktop/R_basic")
getwd()

# install and apply package
install.packages("dplyr")
install.packages("ggplot2")
install.packages("tidyr")
library(dplyr)
library(ggplot2)
library(tidyr)

# data load
acc_data <- read.csv("traffic_accident.csv", header = T, fileEncoding = "euc-kr")

# check attribution
names(acc_data)
names(acc_data) <- c("acc_date", "type", "h2","h4","h6","h8",
                     "h10","h12","h14","h16",
                     "h18","h20","h22","h24")
names(acc_data)

# gather(data, key, value, drop column list)
df_long <- gather(acc_date, hour, count, -date, -type)
df_long$date <- factor(df_long$date, levels = c("sun","mon","tue","wed",
                                                "thu","fri","sat"), ordered=TRUE)
df_long$hour <- factor(df_long$hour, levels = c("h2","h4","h6","h8",
                                                "h10","h12","h14","h16",
                                                "h18","h20","h22","h24"), ordered = TRUE)

g <- ggplot(df_long, aes(x = acc_date, y = count, colour=type)) + geom_point()
g