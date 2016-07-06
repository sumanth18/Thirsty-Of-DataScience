library(data.table)
electriData<-read.table("C:/Users/sumanth/Downloads/household_power_consumption.txt")

EplData<-as.Date(as.character(mydata$Date),"%d-%m-%y")
testdata<- subset(mydata,mydata$Date>=as.Date("01/02/2007") & mydata$Date<=as.Date("02/02/2007"),na.strings="?")
mydata <- read.table("C:/Users/sumanth/Downloads/household_power_consumption.txt", header=TRUE, sep=";", na.strings="?" )

mydata <- read.table("C:/Users/sumanth/Downloads/household_power_consumption.txt", header=TRUE, sep=";", na.strings="?")



## Getting final data between dates

finalData <- plotData[plotData$Date %in% c("1/2/2007","2/2/2007"),]
SetTime <-strptime(paste(finalData$Date, finalData$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
finalData <- cbind(SetTime, finalData)

## Generating Plot 1
hist(finalData$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")

## Plot 2
plot(finalData$SetTime, finalData$Global_active_power, type="l", col="black", xlab="", ylab="Global Active Power (kilowatts)")
## plot 3
plot(finalData$SetTime, finalData$Global_active_power, type="l", col="black", xlab="", ylab="Global Active Power (kilowatts)")
## plot 5
plot(finalData$SetTime,finalData$Sub_metering_1,col="black")
plot(finalData$SetTime,finalData$Sub_metering_1,type="l",col="black")
 lines(finalData$SetTime,finalData$Sub_metering_2,col="red")
 lines(finalData$SetTime,finalData$Sub_metering_3,col="blue")
 legend("topright", legend=labels, col=columnlines, lty="solid")
 
