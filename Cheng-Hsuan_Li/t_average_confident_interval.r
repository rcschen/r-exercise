#example 1
cCost = c(150,400,720,500,930)
cCost_m = mean(cCost)
cCost_sd=sd(cCost)
cCost_se=cCost_sd/sqrt(length(cCost))
cCost_MoE=qt(c(0.025, 0.975), df=(length(cCost)-1))
cCost_m+cCost_MoE[2]*cCost_se
cCost_m-cCost_MoE[2]*cCost_se

#example 2
twalk = c(105,119,98,110,102,97,108,99,82)

twalk_mean = mean(twalk)
twalk_mean
twalk_sd = sd(twalk)
twalk_sd
twalk_se = twalk_sd/sqrt(length(twalk))
MoE=qt(c(0.025, 0.975), df=(length(twalk)-1))
MoE
twalk_mean-twalk_se*MoE[2]
twalk_mean+twalk_se*MoE[2]

#example 3
s=c(28,32,36,22,34,30,33,25,31,33,29,26)
sm=mean(s)
ssd=sd(s)
sse=ssd/sqrt(length(s))
smoe=qt(c(0.025,0.975), df=length(s)-1)
sm-sse*smoe[2]
sm+sse*smoe[2]
smoe=qt(c(0.01,0.99), df=length(s)-1)
sm-sse*smoe[2]
sm+sse*smoe[2]

