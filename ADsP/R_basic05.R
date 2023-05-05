# One Sample t-test

## 단일 표본 단측 t-test
### "**공장에서 생산되는 지우개의 평균 중량은 50kg 이하이다."
weight <- runif(10, min = 49, max = 52)
t.test(weight, mu = 50, alternative ='greater') # 대립가설("50kg 이상이다.")

## 단일 표본 양측 t-test
### "대한민국 남성의 평균 몸무게는 70kg이다."
weights <- runif(100, min = 40, max = 100)
t.test(weights, mu = 70, alternative = "two.sided")

# Independent Sample t-test

## 이 표본 단측 t-test
### "A회사의 급여가 B회사의 급여보다 같거나 많다."
salaryA <- runif(100, min = 250, max = 380)
salaryB <- runif(100, min = 200, max = 400)
t.test(salaryA, salaryB, alternative = "less")

## 이 표본 양측 t-test
### "K와L의 달리기 속도는 같다."
speedK <- runif(100, min = 30, max = 40)
speedL <- runif(100, min = 25, max = 35)
t.test(speedK, speedL, alternative = "two.sided")

# Paired t-test
## 대응 표본 t-test
### "새로운 운동법으로 체중 감량의 효과는 없다."
before <- runif(100, min = 60, max = 80)
after <- before + rnorm(10, mean = -3, sd = 2)
t.test(before, after, alternative = "greater", paired = TRUE)

# One-Way ANOVA
## 일원분산분석
### "A, B, C라는 세대의 신형 핸드폰 간의 속도 차이는 없다."
phoneSpeed <- runif(45, min = 75, max = 100)
telecom <- rep( c('A', 'B', 'C'), 15 )
phoneData <- data.frame(phoneSpeed, telecom)

result <- aov(data = phoneData, phoneSpeed ~ telecom)
summary(result)

# 피어슨 상관분석
x <- c(1,2,3,4,5)
y <- c(3,6,4,9,8)
cor(x,y, method = "pearson")

# 스피어만 상관분석
X <- c(1,2,3,4,5)
Y <- c(3,6,4,9,8)
cor(X,Y, method = 'spearman')
