source("load_data.R")
data<-load_data()
png(filename="figure/plot1.png",
    width=480,height=480,
    units="px")
hist(data$Global_active_power,col="Red",
     main="Global Active Power",
     xlab="Global Active Power (kilowatts)")
dev.off()