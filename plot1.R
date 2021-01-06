data <- read.table("household_power_consumption.txt", sep = ";", header = TRUE, na.strings = "?")
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")
 data$datetime <- strptime(paste(data$Date, data$Time), format = "%d/%m/%Y %H:%M:%S")
data$Global_active_power <- as.numeric(data$Global_active_power)
data1 <- subset(data, Date %in% c("1/2/2007", "2/2/2007"))
 hist(data1$Global_active_power, main = "Global Active Power", col = "red", ylab = "Frequency", xlab="Global Active Power (kilowatts)")

