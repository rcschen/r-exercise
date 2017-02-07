data <- read.table("D:/stock.csv", header = TRUE, sep = ",")

tcv = function(time){
  return(gsub(':','',gsub(' ', '', gsub('-','',time))))
}

getCount=function(xt, nt, a) {
   emps=data[data$area==a & tcv(data$time)>= tcv(nt) & tcv(data$time) <= tcv(xt),]$empid
   #print(data[data$area==a & tcv(data$time)>= tcv(nt) & tcv(data$time) <= tcv(xt),])
   return(emps)
}
max_time='2017-01-13 10:11:25'
min_time='2017-01-13 10:10:55'
a='K05'
m = getCount(max_time,min_time,a)


with (iris, {
    mean(Sepal.Length)
    mean(Petal.Length)
}

      )