plotdata <- read.csv("household_power_consumption_subset.txt", sep=";")

plot(plotdata$Global_active_power, type= "l", xlab="", ylab="Global Active Power (kilowatts)")

dev.copy(png, file= "plot2.png")

dev.off()