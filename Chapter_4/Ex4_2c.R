#Page 188
library("ggplot2")
r1<-c(2,3,4,5,6,7)
r2<-c(3,4,5,6,7,8)
r3<-c(4,5,6,7,8,9)
r4<-c(5,6,7,8,9,10)
r5<-c(6,7,8,9,10,11)
r6<-c(7,8,9,10,11,12)
dice<-matrix(c(r1,r2,r3,r4,r5,r6),nrow=6,byrow=TRUE)

sum<-c(2,3,4,5,6,7,8,9,10,11,12)
prob<-c(1/36,2/36,3/36,4/36,5/36,6/36,5/36,4/36,3/36,2/36,1/36)
prob.dist<-cbind(sum,prob)

reqd_probability<-print(sum(prob[1],prob[3],prob[5],prob[7],prob[9],prob[11]))

df<-data.frame(x = sum, y = prob)

p <- ggplot(df,aes(x=sum,after_stat(prob))) + geom_histogram(binwidth=1, fill="#69b3a2", color="#e9ecef")
print(p)




