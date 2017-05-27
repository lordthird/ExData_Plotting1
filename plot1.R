#Loading Data

datalocation <- "C:/Users/Desktop/coursera/household_power_consumption.txt"
data <- read.table(datalocation, header=TRUE, sep=";", na.strings = "?", stringsAsFactors=FALSE, dec=".")
subData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#Making Plots

globalActivePower <- as.numeric(subData$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
 
dev.off()