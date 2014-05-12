plotdata <- read.csv("household_power_consumption_subset.txt", sep=";")
png(filename="plot4.png", height= 480, width= 480)


par(mfrow=c(2,2))


        plot(plotdata$Global_active_power, type= "l", xlab="", ylab="Global Active Power")

        plot(plotdata$Voltage, type= "l", xlab="datetime", ylab="Voltage")

        plot(plotdata$Sub_metering_1, type= "l", xlab="", ylab="Energy sub metering")
        lines(plotdata$Sub_metering_2, type="l", col="red")
        lines(plotdata$Sub_metering_3,type="l", col="blue")
        legend("topright", lty=1, col= c("black", "Red","blue"),legend= c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

        plot(plotdata$Global_reactive_power, type="l",xlab="datetime", ylab="Global_reactive_power")

dev.off()
