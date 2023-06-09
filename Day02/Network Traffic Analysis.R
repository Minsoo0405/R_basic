#Network Traffic Analysis
getwd()
setwd("/Users/kimminsoo/Desktop/R_basic")
getwd()

# data import 
log <- read.csv("csv001.csv", header = T, stringsAsFactors = F)

log$time <- as.factor(log$time)
log$source_ip <- as.factor(log$source_ip)
log$destination_ip <- as.factor(log$destination_ip)
log$protocol <- as.factor(log$protocol)
log$source_port <- as.factor(log$source_port)
log$destination_port <- as.factor(log$destination_port)

# traffic count(max, min, avg)
frequency_showPivot <- function(x)
{
  print(max(summary(x[,3])))
  print(min(summary(x[,3])))
  print(mean(summary(x[,3])))
}
frequency_showPivot(log)

# traffic amount(max, min, avg)
quantity_showPivot <- function(x)
{
  print(max(as.numeric(as.character(x[,5])), na.rm = TRUE))
  print(min(as.numeric(as.character(x[,5])), na.rm = TRUE))
  print(mean(as.numeric(as.character(x[,5])), na.rm = TRUE))
}
quantity_showPivot(log)

# par()
par(mfrow=c(1,1))

# arrange count
plot(sort(table(log$destination_ip), decreasing = T))
plot(head(sort(table(log$destination_ip), decreasing = T),10))
head(sort(table(log$destination_ip), decreasing = T), 10)

# par()
par(mfrow=c(1,1))

# max Destination
freqSource <- log$source_ip[log$destination_ip == "97.102.48.98"]
plot(sort(table(freqSource), decreasing = T))
plot(head(sort(table(freqSource), decreasing = T), 10))

# traffic recorrelation
install.packages("igraph")
library(igraph)
par(mfrow=c(1,1))
par(mar=c(0,0,0,0))
gh <- graph.data.frame(log[,2:3])
plot(gh, layout=layout.fruchterman.reingold, vertex.size=8, edge.arrow.size=0.5, vertex.label=NA)
