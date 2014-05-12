plotdata <- read.csv("household_power_consumption_subset.txt", sep=";")

par(mfrow = c(1,1))

png(filename="plot1.png", height= 480, width= 480)

hist(plotdata$Global_active_power, xlab= "Global Active Power (kilowatts)", ylab=" Frequency", col= "red", main="Global Active Power")

dev.off()
