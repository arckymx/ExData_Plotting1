plot(data$Datetime, data$Sub_metering_1, 
    type = "l", 
    xlab = "", 
    ylab = "Energy sub metering")
points(data$Datetime, data$Sub_metering_2, 
    type = "l", 
    xlab = "", 
    ylab = "Energy sub metering", 
    col = "red")
points(data$Datetime, data$Sub_metering_3,
    type = "l", xlab = "", ylab = "Energy sub metering", 
    col = "blue")
legend("topright", 
    lty = 1, 
    col = c("black", "red", "blue"), 
    legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))