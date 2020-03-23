# Coursera_EDA week 1 assignment
# plot 3

data_full <- read.csv("household_power_consumption.txt", header = T, sep = ";")
data_sub <- subset(data_full, Date %in% c("1/2/2007", "2/2/2007"))

Global_active_power <- as.numeric(data_sub$Global_active_power)
Datetime <- strptime(paste(data_sub$Date, data_sub$Time), "%d/%m/%Y %T")
Sub_metering_1 <- as.numeric(data_sub$Sub_metering_1)
Sub_metering_2 <- as.numeric(data_sub$Sub_metering_2)
Sub_metering_3 <- as.numeric(data_sub$Sub_metering_3)

png("plot3.png", width = 480, height = 480)

plot(Datetime, Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
lines(Datetime, Sub_metering_2, type = "l", col = "red")
lines(Datetime, Sub_metering_3, type = "l", col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1, col = c("black", "red", "blue"))

dev.off()