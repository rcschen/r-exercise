set.seed(123)
D<-data.frame( education= factor(sample(1:3,15,replace=TRUE),labels=c("None","School","College")),
               gender=factor(sample(1:2,15,replace=TRUE),labels=c("Male","Female")),
               age=runif(15, min=20, max=60))

table(D$education)
ge<-table(D$gender, D$education)
table(D$age, D$education)
addmargins(ge)
addmargins(ge)/nrow(D)
by(D$age,D$gender,mean)
by(D$age,D$gender,sd)
by(D$age,D$gender,summary)

a<-matrix(by(D$age,list(D$gender,D$education),mean),nrow=2)
a
colnames(a)<-levels(D$education)
rownames(a)<-levels(D$gender)
a
