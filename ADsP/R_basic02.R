sqrt(9)
abs(-5)
exp(2)
log(10)
log10(10)
pi
round(3.56)
ceiling(2.4)
floor(6.8)

# 문자열 데이터 생성 
data <- "Today is cloudy"

tolower(data)
toupper(data)
nchar(data)
substr(data, 9, 13)
strsplit(data, 'is')
grepl('sunny', data)
gsub('cloudy', 'rainy', data)

# 벡터 생성
x <- c(1:12)
# 기본값은 6이지만 원하는 개수만큼 데이터를 탐색한다.
head(x,5)
tail(x,4)
quantile(x)

# 데이터 전처리
# 임의의 데이터프레임 생성
df1 <- data.frame(x = c(1,1,1,2,2), y = c(2,3,4,3,3))
df2 <- data.frame(x = c(1,2,3,4), z = c(5,6,7,8))

subset(df1, x = 1)

merge(df1,df2, by=c('x'))

# 1은 각 행에 함수를 적용, 2는 각 열에 함수를 적용
apply(df1,1, sum)
apply(df1,2,sum)

# 산점도
# 1) 데이터 생성
x <- c(1:10)
y <- rnorm(10)

# 2) 산점도 그리기
plot(x, y, type='l', xlim = c(-2,12), ylim = c(-3,3),
     xlab = 'X axis', ylab = 'Y axis', main = 'Test plot')

# 3) 추가 직선
abline(v=c(1,10), col='blue')