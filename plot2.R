# Coursera_EDA week 1 assignment
# plot 2

data_full <- read.csv("household_power_consumption.txt", header = T, sep = ";")
data_sub <- subset(data_full, Date %in% c("1/2/2007", "2/2/2007"))

Global_active_power <- as.numeric(data_sub$Global_active_power)
Datetime <- strptime(paste(data_sub$Date, data_sub$Time), "%d/%m/%Y %T")

png("plot2.png", width = 480, height = 480)

plot(Datetime, Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")

dev.off()
