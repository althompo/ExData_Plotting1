mydat <- read.csv("febdata.csv")
mydat$datetime <- as.POSIXct(paste(mydat$Date, mydat$Time),
                             format="%Y-%m-%d %H:%M:%S")
png("Plot3.png")
plot(mydat$datetime, mydat$Sub_metering_1, type="l", xlab="",
     ylab="Global Active Power (kilowatts)")
lines(mydat$datetime, mydat$Sub_metering_2, col="red")
lines(mydat$datetime, mydat$Sub_metering_3, col="blue")
legend("topright", legend=names(mydat[,8:10]), lwd=1,col=c("black", "red","blue"))

dev.off()
