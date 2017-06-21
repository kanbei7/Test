library('forecast')
library('lmtest')
library("Hmisc")


ts1<-ts(x,start=c(1))
plot.ts(ts1)

tsdiff1<-diff(ts1,differences=1)
plot.ts(tsdiff1,ylab="diff1")
tsdiff2<-diff(ts1,differences=2)
plot.ts(tsdiff2,ylab="diff2")

tsdiff5<-diff(ts1,differences=5)
plot.ts(tsdiff5,ylab="diff5")
tsdiff10<-diff(ts1,differences=10)
plot.ts(tsdiff10,ylab="diff10")
plot.ts(tsdiff2,ylab="diff2")

acf(ts1,lag.max=12)
acf(tsdiff2,lag.max=20,plot=FALSE)

pacf(tsdiff2,lag.max=20)
pacf(tsdiff2,lag.max=20,plot=FALSE)
