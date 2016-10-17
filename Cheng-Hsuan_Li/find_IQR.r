s=c(25,22,29,12,40,15,14,39,37,31,33,19,17,20,35,30)
sort(s)
f=function(m,type){
  l=NULL
  for(i in s) {
     if(type == 'small') {
        if(i< m){
            l=c(l, i)
        }
     }   
     else{
        if(i > m){
            l = c(l,i)
        }
     }
  }
  return( sort(l))
}

sg=f(summary(s)[3], 'small')
cat("small group:", sq,'\n')

bg=f(summary(s)[3],'big')
cat("big group:", bg, "\n")

myIQR=summary(bg)[3]-summary(sg)[3]
cat("My IQR:", myIQR,"\n")
s
IQR(s)