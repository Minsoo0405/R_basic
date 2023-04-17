1:10

a <- 3
a == pi

b <- pi
b == pi

years <- c(1950, 1780, 1995)
years[3]

v <- c(1,2,3,4,5)
w <- c(10,11,12,13,14)

v+w
v-w
v*w
v/w
w^v
v - mean(v)

years <- c(1960,1964,1976,1994)
names(years) <- c("Kenndey","Johnson","Carter","Clinton")

years
years["Carter"]
years[c("Carter", "clinton")]
years[c("Carter", "Clinton")]

# 변동계수
cv <- function(x) sd(x)/mean(x)
x <- c(1:10)

cv(x)
cv(1:20)

# 최대공약수 찾기
gcd <- function(a,b) {
  + if(b==0) return(a)
  + else return(gcd(b,a%%b))
  + }

# Quiz 1
nc <- function(x,y,z) {
  + if max(nc) return(max(nc))
  + else return(z)
  + }

getwd()

# 변수
# Scala
x <- 4
print(x)
num1 <- NULL
num2 <- NA
is.null(num1)
is.null(num2)
is.na(num2)

TRUE & FALSE
TRUE | FALSE

c(TRUE, TRUE) & c(TRUE, FALSE)
c(TRUE, TRUE) && c(TRUE, FALSE)

f <- factor("s", c("s", "t"))
f
nlevels(f)
levels(f)

seq(1,5,2)
rep(1:2,time=3)
rep(1:2,each=3)
rep(1:2, time=2, each=3)

# List
(d <- list(names="Data", num=c(10,20,30)))

# Matrix
matrix(c(10,20,30,40,50,60), nrow = 2)
matrix(c(10,20,30,40,50,60), nrow = 2, byrow = TRUE)
matrix(c(10,20,30,40,50,60), nrow = 2, byrow = TRUE, dimnames = list(c("A","B"), c("C","D","E")))

# DataFrame
a <- data.frame(x=c(1,2,3,4), y=c(6,7,8,9))
a
str(a)

a$x
a$x <- 11:14
a

a$z <- 1:4
a

colnames(a) <- c("num1", "num2", "num3")
rownames(a) <- c(1:4)
a

c(TRUE, TRUE) & c(TRUE, FALSE)
c(TRUE, TRUE) && c(TRUE, FALSE)

f <- factor("s", c("s", "t"))
f
nlevels(f)
levels(f)
is.factor(f)

g <- ordered("x", c("x","y","z"))
g
is.ordered(g)

# if
if(TRUE) {
   print("true")
   print("Hello")
  } else {
    print("false")
    print("world")
  }

x <- c(6,7,8,9,10)
ifelse(x %% 2 == 1, "홀수", "짝수")

# for
for(a in 1:5)
  print(a)
for(a in 1:7) {
  result = 3 * a
  print(result)
}

# while
a <- 1
while (a <= 10) {
  print(a)
  a <- a+1
}
a <- 1
while (a<10) {
  result = 3 * a
  print(result)
  a <- a+1
}
i <- 0
while (i <= 15) {
  i <- i+1
  if (i %% 3 != 0) {
    next
  }
  print(i)
}

# csv file
getwd()
setwd("/Users/kimminsoo/Desktop")

(x <- read.csv("Untitled.csv", header = T))
str(x)

# install readxl package
install.packages("readxl")
# load readxl package
library(readxl)

# import xlsx file
iris_xlsx <- read_excel("iris.xlsx")
iris_xlsx