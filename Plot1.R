mydat <- read.csv("febdata.csv")

png("Plot1.png")
hist(mydat$Global_active_power, col="red", xlab="Global Active Power (kilowatts)",
     main="Global Active Power")
dev.off()
