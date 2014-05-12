plotdata <- read.csv("household_power_consumption_subset.txt", sep=";")

png(filename="plot3.png", height= 480, width= 480)

plot(plotdata$Sub_metering_1, type= "l", xlab="", ylab="Energy Sub metering")
lines(plotdata$Sub_metering_2, type="l", col="red")
lines(plotdata$Sub_metering_3,type="l", col="blue")
legend("topright", lty=1, col= c("black", "Red","blue"),legend= c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))



dev.off()