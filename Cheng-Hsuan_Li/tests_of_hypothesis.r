# example1 
# 200/360 samples agree
# more than half of TPE agree?
# H0: p = 0.5
# H1: p > 0.5
# SE(p_hat) = sqrt(p_hat*(1-p_hat))
# Z=(p_hat-mean(P))/SE(p_hat)
p=200/360
se= sqrt(p*(1-p)/360)
z=(p-0.5)/se
check=1-pnorm(z)
check
prop.test(200, 360, 0.5,("greater"))

# example2
# 0.6 percent graduate from A university
# 32/50 samples graduated from A in X area
# people in X are the same with the population?
# H0: p = 0.6
# H1: p =\= 0.6
p=32/50
se = sqrt(p*(1-p)/50)
z=(p-0.6)/se
check_uper = 1-pnorm(z)
check_lower = pnorm(-z)
check_uper
check_lower
check=2*check_uper

# example3
# average 16 ounce
# 49 samples, their mean is 15.90, sd is 0.35
# H0 average weight = 16
# H1 average weight < 16
x_hat_mean  = 15.90
se = 0.35/sqrt(49)
z= (15.9-16)/se
check = pnorm(z)
check

# example4
# average score is 60 
# 94 sample with 58 avg score and 9.2 sd
# the same?
# h0 : mean = 60
# ha : mean =\= 60
se = 9.2/sqrt(94)
z= (58-60)/se
c_u = pnorm(z)
2*c_u

# example for t
#Cost = c(150,400,720,500,930)
#H0 average_cose = 1000
#Ha average_cose < 1000
co= c(150,400,720,500,930)
m = mean(co)
sd = sd(co)
sqrt(((150-m)^2+(400-m)^2+(720-m)^2+(500-m)^2+(930-m)^2)/4)
se=sd/sqrt(5)
t=(m-1000)/se
pt( t, df=5-1)
t.test(co, mu = 1000, alternative ='less' )

# example fort
# h0 avg=65
# ha >65
sc=c(72,76,68,78,62,59,64,85,70 ,75,61,74,87,83,54,76,56,66,68,62)
l=length(sc)
m=mean(sc)
sd=sd(sc)
se=sd/sqrt(l)
t=(m-65)/se
p=1-pt(t, df=l-1)
p
2*p
t.test(sc, mu = 65, alternative = 'greater')