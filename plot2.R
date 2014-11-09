source("load_data.R")
data<-load_data()
png(filename="figure/plot2.png",
    width=480,height=480,
    units="px")
plot(data$DateTime,data$Global_active_power,
     type="l",
     xlab="",ylab="Global Active Power(kilowatts)")
dev.off()