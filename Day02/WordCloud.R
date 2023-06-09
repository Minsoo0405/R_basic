# WordCloud
install.packages("KoNLP")

library(KoNLP)


install.packages("rJava")
install.packages("multilinguer")
install.packages(c("stringr", "hash", "tau","Sejong","RSQLite","devtools"), type = "binary")
install.packages("remotes")
remotes::install_github("haven-jeon/KoNLP", upgrade = "never", INSTALL_opts = c("--no-multiarch"))
library(KoNLP)
library(ggplot2)
library(ggmap)
library(stringr)
library(dplyr)
extractNoun("테스트 입니다.")

f = file("text_data.txt", blocking = F)

txtLines = readLines(f)
nonus = sapply(txtLines, extractNoun, USE.NAMES = F)
head(unlist(nonus), 20)

write(unlist(nonus), "news-1.txt")

revised = read.table("news-1.txt")
nrow(revised)
wordcount = table(revised)
length(wordcount)
head(sort(wordcount, decreasing = T), 10)

install.packages("wordcloud")
library(wordcloud)
library(RColorBrewer)

pal = brewer.pal(9, "Set1")
x11()
wordcloud(names(wordcount), freq = wordcount, scale = c(5, 1), rot.per = 0.25, min.freq = 1, random.order = F, random.color = T, colors = pal)
