setwd("~/Desktop/R")
subdata <- file("household_power_consumption.txt")

png(filename='plot1.png',width=480,height=480,units='px')
plot1 <- read.table(text = grep("^[1,2]/2/2007", readLines(subdata), value = TRUE), col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), header = TRUE, sep = ";", na.strings = "?",nrows = 2075259, check.names=FALSE, stringsAsFactors = FALSE, comment.char = "", quote = '\"')
hist(plot1$Global_active_power, xlab = "Global Active Power (kilowatts)", col="red", main="Global active power")
dev.off()