# example 1
# 92 students
# average 145.2 pound
# sd 23.7
# find average interval
swm=145.2
swsd=23.7
swse=swsd/sqrt(92)
swm+1.96*swse
swm-1.96*swse
pnorm(c(-1.96,1.96))
qnorm(c(0.159,0.841))
0.84-0.158