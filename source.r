my.sd = function(y) {
   sink("D:\\study\\r\\r-exercise\\source.txt")
   n=length(y)
   result = sqrt((sum(y^2) - n * mean(y)^2)/(n-1))
   sink()
   return(result)
}