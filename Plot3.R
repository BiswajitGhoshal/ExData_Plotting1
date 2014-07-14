Plot3 <- {
## function to plot the 3rd diagram for Assignment 1. The date and time have been
## converted into one Date-type variable.  Width and Height are set in the png() command.
## The lines() function has been used to plot in the same-diagram.
    
    inf <- read.csv("household_power_consumption.txt", header=TRUE,sep =";", nrows=70000)
    f <- inf[((inf$Date == "1/2/2007") | (inf$Date == "2/2/2007")),]
    f[,3] <- as.numeric(f[,3])
    f[,3] <- f[,3]/500
    f$Date <- strptime(paste(f$Date, f$Time), format="%d/%m/%Y %H:%M:%S")
    png("Plot3.png", width=480, height=480, units="px")
    plot(f$Date, f$Sub_metering_1, type="l",xlab="",ylab="Global Active Power (kilowatts)")
    lines(f$Date, f$Sub_metering_2, type = "l", col = "red")
    lines(f$Date, f$Sub_metering_3, type = "l", col = "blue")
    legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"))
    dev.off()
}