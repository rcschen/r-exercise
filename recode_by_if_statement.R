x=sample(1:100,10)
x2=1*(x<=40)+2*(x>40 & x<=70) + 3*(x>70)
lb=c('A','B','C')
lb[x2]

#-----
l1=1:10
l2=1:5
(l1 %in% l2)
#----

#--ifelse---
l1=1:10
l2=1:5
l3=6:8
x3=ifelse(l1<5, 'A','B')
x4=ifelse(l1 %in% l2, 'A','B')
x5=ifelse(l1 %in% l2, 'A', ifelse(l1 %in% l3, 'B','c'))

#---cut---
x6=cut(l1,breaks=c(0,5,8,max(l1)), labels=c('A','B','c'))
x7=as.vector(x6)

#---car---
install.packages('car')
library(car)
recode(l1, "lo:5='A'; 6:8='B';.9:hi='C';else=NA")
