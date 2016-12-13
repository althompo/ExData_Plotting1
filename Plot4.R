mydat <- read.csv("febdata.csv")
mydat$datetime <- as.POSIXct(paste(mydat$Date, mydat$Time),
                             format="%Y-%m-%d %H:%M:%S")
png("Plot4.png")
par(mfrow=c(2,2))
plot(mydat$datetime, mydat$Global_active_power, type="l", xlab="",
     ylab="Global Active Power (kilowatts)")

plot(mydat$datetime, mydat$Voltage, type="l", xlab="datetime",
     ylab="Voltage")

plot(mydat$datetime, mydat$Sub_metering_1, type="l", xlab="",
     ylab="Global Active Power (kilowatts)")
lines(mydat$datetime, mydat$Sub_metering_2, col="red")
lines(mydat$datetime, mydat$Sub_metering_3, col="blue")
legend("topright", legend=names(mydat[,8:10]), lwd=1,col=c("black", "red","blue"))

plot(mydat$datetime, mydat$Global_reactive_power, type="l", xlab="datetime",
     ylab="Global_reactive_power")


dev.off()