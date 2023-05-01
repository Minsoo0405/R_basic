# 정규 분포
m = 0
s = 1

x <- seq(m-(3*s), m+(3*s), length=200)
y <- dnorm(x, mean = m, sd = s)
plot(x, y, type = 'l')

# 카이제곱 분포
x <- seq(0,50, length.out = 201)
k <- 1
y <- (1/(2^(k/2)*factorial(k/2-1)))*x^((k/2)-1)*exp(-x/2)
plot(x, y, type = 'l', main = 'Chi-squared Distribution', ylab = 'y', ylim = c(0, 0.5))
y1 <- dchisq(x, k)
lines(x, y, type = 'l', col = 'blue')
y == y1
c <- round(y - y1, digits = -6)

y1 <- dchisq(x, 1)
y5 <- dchisq(x, 5)
y10 <- dchisq(x, 10)

lines(x, y1, col = 'red')
lines(x, y5, col = 'green')
lines(x, y10, col = 'grey')
legend('top', ncol = 3,
       col = c('red', 'green', 'grey',),
       legend = c('k=1','k=5', 'k=10'))


# F분포
x <- seq(0, 5, length.out = 101)
v1 <- 4
v2 <- 50

y <- sqrt(((v1*x)^v1*v2^v2)/((v1*x+v2)^(v1+v2)))/(x*((factorial(v1/2-1)*factorial(v2/2-1))/factorial(v1/2+v2/2-1)))

plot(x,y)

yf <- sqrt(((v1*x)^v1*v2^v2)/((v1*x+v2)^(v1+v2)))/(x*beta(v1/2, v2/2))
lines(x, yf, col='red')
y4_50 <- df(x, v1, v2)
lines(x, y4_50, col='blue')

plot(x, df(x, 2, 8), type = 'l', col = 'red')
lines(x, df(x, 8, 2), col = 'pink')
lines(x, df(x, 16, 8), col = 'blue')
legend('top', ncol =3,
       col = c('red', 'pink', 'blue'),
       legend = c('k=2, 8', 'k=2,8', 'k=16,8'))

