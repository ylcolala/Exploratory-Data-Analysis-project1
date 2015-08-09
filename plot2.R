household<-read.table("household_power_consumption.txt", head=TRUE, stringsAsFactors=FALSE,
                      na.strings="?",sep=';')
household<-subset(household, household$Date %in% c("1/2/2007","2/2/2007"))
datetime <- strptime(paste(household$Date, household$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
plot(datetime, as.numeric(household$Global_active_power),type="l",ylab="Global active power")
dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()