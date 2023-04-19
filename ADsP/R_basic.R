# Character type
class('abc')
class("defg")
class('1')
class("TRUE")

# Numeric type
class(Inf)
class(12)
class(1.1)

# Logical type
class(TRUE)
class(FALSE)

# NaN, NA, NULL
sqrt(-3)
class(NA)
class(NULL)

# Vector
v4 <- c(3, TRUE, FALSE)
v4
v5 <- c('a', 1, TRUE)
v5
v6 <- c(1:6)
v6

# Matrix
m1 <- matrix(c(1:6), nrow = 2)
m1
m2 <- matrix(c(1:6), ncol = 2)
m2
m3 <- matrix(c(1:6), nrow =2, byrow = T)
m3
v1 <- c(1:6)
dim(v1) <- c(2,3)
v1

# array
a1 <- array(c(1:12), dim = c(2,3,2))
a1

# list
L <- list()
L[[1]] <- 5
L[[2]] <- c(1:6)
L[[3]] <- matrix(c(1:6), nrow=2)
L[[4]] <- array(c(1:12), dim=c(2,3,2))
L

# Dataframe
v1 <- c(1,2,3)
v2 <- c('a','b', 'c')
df1 <- data.frame(v1,v2)
df1

# Data extraction
v1 <- c(3,12,3)
v1[2]
m1 <- matrix(c(1:6), nrow=3)
m1[2,2]
colnames(m1) <- c('c1', 'c2')
m1[, 'c1']

v1 <- c(1:6)
v2 <- c(7:12)
df1 <- data.frame(v1,v2)
df1$v1
df1$v2[3]

# for
for (i in 1:3) {
  print(i)
}

# while
i <- 0
while(i < 5) {
  print(i)
  i <- i+1
}

# if
number <- 5
  if(number < 5) {
    print('number는 5보다 작다')
  } else if (number > 5) {
    print('number는 5보다 크다')
  } else {
    print('number는 5와 같다')
  }

# Function
comparedTo5 <- function(number) {
  if(number<5) {
    print('number는 5보다 작다')
  } else if (number > 5) {
    print('number는 5보다 크다')
  } else {
    print('number는 5와 같다')
  }
}
comparedTo5(10)
comparedTo5(3)
comparedTo5(5)