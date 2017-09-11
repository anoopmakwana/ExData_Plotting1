# read data
# The script expects that you extract the zip in it's working directory
data <- read.table("household_power_consumption.txt", header=TRUE, na.strings="?", sep=";")

#Filter data
data <- data[(data$Date=="1/2/2007" | data$Date=="2/2/2007" ), ]

#format date and time
data$Date <- as.Date(data$Date, format="%d/%m/%Y")
data$DateTime <- as.POSIXct(paste(data$Date, data$Time))

#plot2
plot(data$Global_active_power~data$DateTime, type="l", ylab="Global Active Power (kilowatts)", xlab="")
dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()
