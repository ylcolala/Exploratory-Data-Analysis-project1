household<-read.table("household_power_consumption.txt", head=TRUE, stringsAsFactors=FALSE,
                      na.strings="?",sep=';')
household<-subset(household, household$Date %in% c("1/2/2007","2/2/2007"))
datetime <- strptime(paste(household$Date, household$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
with(household, {
 plot(datetime,as.numeric(Sub_metering_1),type="l", ylab="Energy sub metering",
      xlab="Global Active Power (kilowatts)")
 lines(datetime,as.numeric(Sub_metering_2), col="red")
 lines(datetime,Sub_metering_3,col="blue")
 legend("topright", col=c("black","red","blue"),lty=1, lwd = 2,
        legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
 } )



dev.copy(png, file="plot3.png", height=480, width=480)
dev.off()