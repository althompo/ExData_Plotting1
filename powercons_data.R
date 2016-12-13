#data read from unpacked zip to a local variable and exported to local .csv file
#using code:
powercons <- read.table("household_power_consumption 2.txt", header=TRUE, sep=";")

powercons$Date <- as.Date(powercons$Date, "%d/%m/%Y")

powercons$date2 <- as.numeric(powercons$Date)

febdata <- subset(powercons, date2 > 13544 & date2 < 13547)

write.csv(febdata, "febdata.csv")