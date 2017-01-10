levels(iris$Species)
iris_vv=iris[iris$Species!='setosa',]
iris_vv
levels(iris_vv$Species)
iris_vv$Species=factor(iris_vv$Species)
levels(iris_vv$Species)
lrm = glm(Species~Petal.Length,data=iris_vv, family='binomial')
summary(lrm)
pre = predict(lrm, iris_vv, type='response')
round(pre, 2)
factor(pre>0.5, levels=c(FALSE, TRUE), labels=levels(iris_vv$Species))

plot(iris$Petal.Length, iris$Species,  pch=19)
