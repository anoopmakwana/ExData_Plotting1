# read data
# The script expects that you extract the zip in it's working directory
data <- read.table("household_power_consumption.txt", header=TRUE, na.strings="?", sep=";")

#Filter data
data <- data[(data$Date=="1/2/2007" | data$Date=="2/2/2007" ), ]

## 1st Plot
hist(data$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red", cex.sub=0.8)

## export png
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()

