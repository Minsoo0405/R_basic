#graph
plot(Orange$age, Orange$circumference)

plot(Orange$age, Orange$circumference, xlab = "orange Tree Age", ylab = "orange Tree Circumference", main = "Orange Tree")

plot(Orange$age, Orange$circumference, cex=2)
plot(Orange$age, Orange$circumference, cex=2, type='l')
plot(Orange$age, Orange$circumference, cex=2, type='b')
plot(Orange$age, Orange$circumference, cex=2, type='o')
plot(Orange$age, Orange$circumference, cex=2, type='n')


iris_data <- read_excel("iris.xlsx")
iris_data

curve(sin, 0, 2*pi)
