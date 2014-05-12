plotdata <- read.csv("household_power_consumption_subset.txt", sep=";")

png(filename="plot2.png", height= 480, width= 480)

plot(plotdata$Global_active_power, type= "l", xlab="", ylab="Global Active Power (kilowatts)")



dev.off()