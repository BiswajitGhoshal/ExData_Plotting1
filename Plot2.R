Plot2 <- {
    inf <- read.csv("household_power_consumption.txt", header=TRUE,sep =";", nrows=70000)
    f <- inf[((inf$Date == "1/2/2007") | (inf$Date == "2/2/2007")),]
    f[,3] <- as.numeric(f[,3])
    f[,3] <- f[,3]/500
    f$Date <- strptime(paste(f$Date, f$Time), format="%d/%m/%Y %H:%M:%S")
    plot(f$Date, f$Global_active_power, type="l",xlab="",ylab="Global Active Power (kilowatts)")
}