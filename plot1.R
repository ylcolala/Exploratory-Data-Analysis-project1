household<-read.table("household_power_consumption.txt", head=TRUE, 
                      stringsAsFactors=FALSE, na.strings="?",sep=';')
household<-subset(household, household$Date %in% c("1/2/2007","2/2/2007"))
with(household, hist(as.numeric(Global_active_power),col = "red",
                     xlab="Global active power (killowatts)", main="Global Active Power"))
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()
