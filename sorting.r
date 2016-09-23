D<-data.frame(x=c(1,2,3,1),y=c(7,19,2,2))
D
order_x <-order(D$x)
order_x
D[order_x,]
D
order_y <-order(D$y)
order_y
D[order_y,]
D[1:2,]
D[,1:2]
D[rev(order(D$y)),]
