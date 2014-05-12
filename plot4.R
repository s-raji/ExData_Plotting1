plotdata <- read.csv("household_power_consumption_subset.txt", sep=";")

png(filename="plot4.png", height= 480, width= 480)

par(mfrow=c(2,2))

plot(strptime(paste(plotdata$Date, plotdata$Time, sep = " "), format = "%d/%m/%Y %H:%M:%S"), plotdata$Global_active_power, type= "l", xlab="", ylab="Global Active Power")

plot(strptime(paste(plotdata$Date, plotdata$Time, sep = " "), format = "%d/%m/%Y %H:%M:%S"), plotdata$Voltage, type= "l", xlab="datetime", ylab="Voltage")

plot(strptime(paste(plotdata$Date, plotdata$Time, sep = " "), format = "%d/%m/%Y %H:%M:%S"), plotdata$Sub_metering_1, type= "l", xlab="", ylab="Energy sub metering")
lines(strptime(paste(plotdata$Date, plotdata$Time, sep = " "), format = "%d/%m/%Y %H:%M:%S"), plotdata$Sub_metering_2, type="l", col="red")
lines(strptime(paste(plotdata$Date, plotdata$Time, sep = " "), format = "%d/%m/%Y %H:%M:%S"), plotdata$Sub_metering_3,type="l", col="blue")
legend("topright", lty=1, col= c("black", "Red","blue"),legend= c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

plot(strptime(paste(plotdata$Date, plotdata$Time, sep = " "), format = "%d/%m/%Y %H:%M:%S"), plotdata$Global_reactive_power, type="l",xlab="datetime", ylab="Global_reactive_power")

dev.off()
