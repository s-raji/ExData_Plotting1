data <- read.csv("household_power_consumption.txt", sep =";", header= TRUE)

write.table(
        subset(data, as.Date(data$Date, format = "%d/%m/%Y") %in% as.Date(c("2007-02-01", "2007-02-02"), format = "%Y-%m-%d")),
        file= "household_power_consumption_subset.txt",
        sep =";",
        quote=FALSE
)
