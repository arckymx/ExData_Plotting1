# loading main data
maindata <- read.csv("household_power_consumption.txt", header = T, sep = ';', 
                      na.strings = "?", nrows = 2075259, check.names = F, 
                      stringsAsFactors = F, comment.char = "", quote = '\"')
maindata$Date <- as.Date(maindata$Date, format = "%d/%m/%Y")

# subsetting main data
data <- subset(maindata, subset = (Date >= "2007-02-01" & Date <= "2007-02-02"))
rm(maindata)

# converting dates
datetime <- paste(as.Date(data$Date), data$Time)
data$Datetime <- as.POSIXct(datetime)

# creating plot 2
plot(data$Global_active_power ~ data$Datetime, type = "l",
     ylab = "Global Active Power (kilowatts)", xlab = "")