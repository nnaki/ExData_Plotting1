# Coursera_EDA week 1 assignment
# plot 1

data_full <- read.csv("household_power_consumption.txt", header = T, sep = ";")
data_sub <- subset(data_full, Date %in% c("1/2/2007", "2/2/2007"))

Global_active_power <- as.numeric(data_sub$Global_active_power)

png("plot1.png", width = 480, height = 480)

hist(Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "red")

dev.off()
