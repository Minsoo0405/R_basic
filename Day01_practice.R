# rbind
rbind(c(1,2,3), c(4,5,6))

# cbind
cbind(c(1,3,5), c(2,4,6))

# apply
x <- matrix(1:10,ncol=2)
x
apply(x, 1, sum)
apply(x, 2, sum)

# lapply()
lapply(mtcars[,1:4], mean)

# merge
a <- data.frame(name=c("x","y","z"), weight=c(50,60,70))
b <- data.frame(name=c("y","z","x"), height=c(150,160,170))
merge(a,b)

# sort
num <- c(71,85,24,9,13)
num
sort(num,decreasing = T)

# order
num
order(num)
order(num, decreasing = T)

# stack
a <- data.frame(x=c(1,4,7),
                y=c(2,9,6),
                z=c(4,3,1))
stackedA <- stack(a)
stackedA

# unstack
unstack(stackedA)
unstack(stackedA, values~ind)

# vector
a <- c("x","y","z")
a[1]
a[-2]
a[2:3]
length(a)
NROW(a)

"x" %in% c("x","y","z")
"w" %in% c("x","y","z")

# seq
seq(1,5)
seq(1,7,2)

# rep
rep(1:2, times=4)
rep(1:2, each=3)

#list
d <- list(names"Data", num = c(10, "d", TRUE))