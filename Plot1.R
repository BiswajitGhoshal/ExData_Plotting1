Plot1 <- {
## function to plot the 1st diagram for Assignment 1. The Global_active_power variable has been 
## divided by 500 to comply with the sample-diagram.  Width and Height are set in the png() command.

    inf <- read.csv("household_power_consumption.txt", header=TRUE,sep =";", nrows=70000)
    f <- inf[((inf$Date == "1/2/2007") | (inf$Date == "2/2/2007")),]
    f[,3] <- as.numeric(f[,3])
    f[,3] <- f[,3]/500
    png("Plot1.png", width=480, height=480, units="px")
    hist(f$Global_active_power, col = "RED", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
    dev.off()
}