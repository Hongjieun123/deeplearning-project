#덕선이 신랑찾기
#상관분석
install.packages('xlsx') #엑셀불러들이는 패키지
install.packages('corrplot') #상관관계 분석
library(xlsx) 
library(corrplot)
getwd()
setwd('c:/data')  #워킹 디렉토리 세팅
xlsx_DS = read.xlsx('DS.xlsx',1)

dscorr <- cor(xlsx_DS)
corrplot(dscorr, method = 'circle')  #다 같이 하는게 아니라 하나씩 하는거야 
corrplot(dscorr, method = 'number')
corrplot(dscorr, method = 'pie')
corrplot(dscorr, method = 'ellipse')
getwd() #현재 디렉토리가 뭔지 확인 가능