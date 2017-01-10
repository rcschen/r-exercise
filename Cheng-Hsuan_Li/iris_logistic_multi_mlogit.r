library('mlogit')
irismg=mlogit.data(iris, choice='Species', shap='wide')
irismg
irismg=mlogit.data(iris, choice='Species', shap='wide',drop.index = TRUE)
irismg
mlr=mlogit(Species~0|Petal.Length, data=irismg)
summary(mlr)
#mlr=mlogit(Species~0|Petal.Length, data=irismg, reflevel = 'versicolor')
#summary(mlr)
# select one value in 1~7 as Petal.Length
newPetal.Length=c(1, 4.35, 6.9)
mlr$coefficients
b_s_ve0 = mlr$coefficients[1]
b_s_ve1 = mlr$coefficients[3]
b_s_vi0 = mlr$coefficients[2]
b_s_vi1 = mlr$coefficients[4]

de = 1+ exp(b_s_ve0+b_s_ve1*newPetal.Length) + exp(b_s_vi0+b_s_vi1*newPetal.Length)
pse = round(1/de,3)
pve = round(exp(b_s_ve0+b_s_ve1*newPetal.Length)/de,3)
pvi = round(exp(b_s_vi0+b_s_vi1*newPetal.Length)/de,3)
pse 
pve
pvi