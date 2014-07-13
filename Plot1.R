Plot1 <- {
    inf <- read.csv("household_power_consumption.txt", header=TRUE,sep =";", nrows=70000)
    f <- inf[((inf$Date == "1/2/2007") | (inf$Date == "2/2/2007")),]
    f[,3] <- as.numeric(f[,3])
    f[,3] <- f[,3]/500
    hist(f$Global_active_power, col = "RED", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
}