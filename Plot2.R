mydat <- read.csv("febdata.csv")
mydat$datetime <- as.POSIXct(paste(mydat$Date, mydat$Time),
                             format="%Y-%m-%d %H:%M:%S")
png("Plot2.png")
plot(mydat$datetime, mydat$Global_active_power, type="l", xlab="",
     ylab="Global Active Power (kilowatts)")

dev.off()
