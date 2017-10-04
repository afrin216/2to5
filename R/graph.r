# cerner_2^5_2017
x=seq(0,10,0.1)
x2=seq(1,10,0.1)
y=sin(x)
y2=cos(x)
y3=tan(x)

plot(x,y,type="l", xlab="time", ylab="waves", col="red")
lines(x,y2,type="l",col="green")
lines(x,y3,type="l",col="blue")
