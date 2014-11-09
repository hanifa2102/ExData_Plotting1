load_data <- function() {
  r_data <- read.table("data/household_power_consumption.txt",h=T,sep=";",
                       colClasses = c("character", "character", rep("numeric",7)),
                       na="?")
  r_data <-r_data[r_data$Date=="1/2/2007" | r_data$Date=="2/2/2007",]
  r_data$DateTime <-paste(r_data$Date,r_data$Time)
  r_data$DateTime <- strptime(r_data$DateTime, "%d/%m/%Y %H:%M:%S")
  #r_data$DateTime <-as.Date(r_data$DateTime)  
  r_data
}