# Library data
getwd()

# install and apply packages
install.packages("dplyr")
install.packages("ggplot2")
install.packages("ggmap")
install.packages("RColorBrewer")
library(dplyr)
library(ggplot2)
library(ggmap)
library(RColorBrewer)

# load data
df_source = read.csv(file = "library.csv",
                     stringsAsFactors = FALSE,
                     fileEncoding = "euc-kr")
View(df_source)

# labeling
df_data <- tbl_df(df_source)

df_data[df_data$도서관유형 == '공공',]$도서관유형 <- '공공도서관'
df_data[df_data$도서관유형 == '작은',]$도서관유형 <- '작은도서관'
df_data[df_data$도서관유형 == '공공도서간',]$도서관유형 <- '공공도서관'

df_data <- df_data[df_data$도서관명 > '',]
df_data$시도명 <- factor(df_data$시도명)
df_data$도서관유형 <- factor(df_data$도서관유형)

df_data$자료수.도서. <- gsub('"', "", df_data$자료수.도서.)
df_data$자료수.도서. <- gsub(',', "", df_data$자료수.도서.)
df_data$자료수.도서. <- as.numeric(df_data$자료수.도서.)

df_data$자료수.비도서. <- gsub('"', "", df_data$자료수.비도서.)
df_data$자료수.비도서. <- gsub(',', "", df_data$자료수.비도서.)
df_data$자료수.비도서. <- as.numeric(df_data$자료수.비도서.)

df_data$자료수.연속간행물. <- gsub('"', "", df_data$자료수.연속간행물.)
df_data$자료수.연속간행물. <- gsub('.', "", df_data$자료수.연속간행물.)
df_data$자료수.연속간행물. <- as.numeric(df_data$자료수.연속간행물.)

#df_data$위도 <- as.double(df_data$위도)
#df_data$경도 <- as.double(df_data$경도)

sido_count <- df_data %>% group_by(시도명) %>% summarise(cnt = n())

g <- ggplot(sido_count, aes(x = reorder(시도명, cnt),
                            y = cnt, fill=시도명)) + geom_bar(stat = "identity")
g <- g + xlab("시도명") + ylab("도서관수")
g <- g + theme(text = element_text(family = "/System/Library/Fonts/Supplemental/AppleGothic"))
g <- g + theme(axis.text.x = element_text(angle = 30, hjust = 1, vjust = 1, 
                                          family = "/System/Library/Fonts/Supplemental/AppleGothic"))
g

# total count(library type)
m <- length(df_data$도서관명)

df_data %>% group_by(도서관유형) %>% summarise(cnt = n(), round(cnt / m, 2))

g <- ggplot(df_data[df_data$자료수.도서. < 200000,],
            aes(x = 자료수.도서., fill=도서관유형)) + geom_histogram(bins = 100)
g

# filtering small library
df_data2 <- df_data %>% filter(
  도서관유형 == "작은도서관"
)

df_data2 <- rename(df_data2, "name" = "도서관유형", "lat" = "위도", "lon" = "경도")
df_data3 <- df_data2[,c(4,20,21)]
df_data3 <- df_data3[df_data3$lon<=130,]

qmplot(lon, lat, data=df_data3, maptype = "toner-lite" ,color = "작은도서관")

qmplot(lon, lat, data = df_data3, maptype = "toner-lite", color = "작은도서관") +
  stat_density_2d(aes(fill - stat(level)), geom = "polygon", alpha = .4, bins = 15) +
  scale_fill_gradientn(colors = brewer.pal(7, "YlOrRd"))
