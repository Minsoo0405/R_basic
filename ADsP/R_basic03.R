# DataFrame 생성
v1 <- c(1,2,1,2)
v2 <- c(1,1,2,2)
v3 <- c(60,90,70,90)
v4 <- c(80,70,40,60)
score <- data.frame(v1,v2,v3,v4)
colnames(score) <- c('student_number', 'semester', 'math_score', 'english_score')

# melt 함수
score # 두 학생의 학기별 함수 데이터 프레임

# reshape가 설치 및 호출되지 않을 경우 reshape2를 설치해도 된다
install.packages('reshape')
library(reshape)
melt(score, id=c("student_number", "semester"))

# melt를 활용하여 얻은 결과를 melted_score로 저장
melted_score <- melt(score, id=c("student_number", "semester"))

# 학생의 과목별 평균점수를 알고 싶은 경우
cast(melted_score, student_number ~ variable, mean)

# 학생의 학기별 평균점수를 알고 싶은 경우
cast(melted_score, student_number ~ semester, mean)

# 학생의 과목별 최댓값을 알고 싶은 경우
cast(melted_score, student_number ~ variable, max)

install.packages('sqldf')

# sqldf 패키지
library(sqldf)
sqldf('select * from score')

sqldf('select * from score where student_number = 1')

sqldf('select avg(math_score), avg(english_score) from score group by student_number')