index = iris$Species!='setosa'
iris_vv = iris[index,]
iris_vv
levels(iris_vv$Species)
iris_vv$Species=factor(iris_vv$Species)
levels(iris_vv$Species)

#get samples
library('caTools')
tr_index=sample.split(iris_vv$Species, 2/3)
tr_index
iris_vv.train=iris_vv[tr_index,]
length(iris_vv.train$Species)
iris_vv.test=iris_vv[!tr_index,]
length(iris_vv.test$Species)
lrm = glm(Species~Petal.Length, data=iris_vv.train, family='binomial')
summary(lrm)
pre=round(predict(lrm, iris_vv.test, type='response'))
pre
pre_lable=factor(pre,levels=c(0,1),labels=levels(iris_vv$Species))
pre_lable

