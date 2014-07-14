Plot4 <- {
## function to plot the 4th diagram for Assignment 1. The individual diagrams are drawn row-wise
## which is set by the par() function.  Width and Height are set in the png() command.
    
    inf <- read.csv("household_power_consumption.txt", header=TRUE,sep =";", nrows=70000)
    f <- inf[((inf$Date == "1/2/2007") | (inf$Date == "2/2/2007")),]
    f[,3] <- as.numeric(f[,3])
    f[,3] <- f[,3]/500
    f[,4] <- as.numeric(f[,4])
    f[,4] <- f[,4]/500
    
    f$Date <- strptime(paste(f$Date, f$Time), format="%d/%m/%Y %H:%M:%S")
    png("Plot4.png", width=480, height=480, units="px")
    par(mfrow = c(2, 2))
    plot(f$Date, f$Global_active_power, type="l",xlab="",ylab="Global Active Power")
    
    plot(f$Date, f$Voltage, type="l",xlab="datetime",ylab="Voltage")

    plot(f$Date, f$Sub_metering_1, type="l",xlab="",ylab="Global Active Power (kilowatts)")
    lines(f$Date, f$Sub_metering_2, type = "l", col = "red")
    lines(f$Date, f$Sub_metering_3, type = "l", col = "blue")
    legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"))

    plot(f$Date, f$Global_reactive_power, type="l",xlab="datetime",ylab="Global_reactive_power")
    
    dev.off()
}