plotdata <- read.csv("household_power_consumption_subset.txt", sep=";")

par(mfrow = c(1,1))

png(filename="plot2.png", height= 480, width= 480)

plot(strptime(paste(plotdata$Date, plotdata$Time, sep = " "), format = "%d/%m/%Y %H:%M:%S"), plotdata$Global_active_power, type= "l", xlab="", ylab="Global Active Power (kilowatts)")

dev.off()
