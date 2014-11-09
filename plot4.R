source("load_data.R")
data<-load_data()
png(filename="figure/plot4.png",
    width=480,height=480,
    units="px")
par(mfrow = c(2, 2), mar = c(4, 4, 2, 1), oma = c(0, 0, 2, 0))
with(data, {
  plot(DateTime,Global_active_power,type="l",xlab="",ylab="Global Active Power")
  plot(DateTime, Voltage,type="l",xlab="datetime")
})
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
plot(data$DateTime,data$Global_reactive_power,type="l",
     xlab="datetime",ylab="Global_reactive_power")
dev.off()