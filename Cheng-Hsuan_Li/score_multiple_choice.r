response=read.csv("D:\\WiWork\\wiarea\\rssi_experiment\\rssi_experiment_data\\csv\\chair\\G_1_T_2_5m_0714.csv")
response
key=c( 3 ,        3  ,        2,        3)
library('psych')


ex<-data.frame( s1=c(3,3,2,2),
                s2=c(3,3,1,2),
                s3=c(2,2,3,3),
                s4=c(3,3,3,2))
ex
tests= score.multiple.choice(key,ex,score=TRUE,short=FALSE)
tests
