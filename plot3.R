source("load_data.R")
data<-load_data()
png(filename="figure/plot3.png",
   width=480,height=480,
    units="px")
plot(data$DateTime,data$Sub_metering_1,
     type="l",
     xlab="",ylab="Energy sub metering")
lines(data$DateTime,data$Sub_metering_2,type="l",col="red")
lines(data$DateTime,data$Sub_metering_3,type="l",col="blue")
legend("topright",
       c("Sub_Metering_1","Sub_Metering_2","Sub_Metering_3"),
       lwd=1,
       col=c("black","red","blue")
             )

dev.off()