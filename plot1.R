install.packages("data.table")
library(data.table)

## Download File
if(!file.exists("./data ")){dir.create("./data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(fileUrl,destfile="./data/ElectricPowerConsumption.zip")


#Unzip File
unzip("./data/ElectricPowerConsumption.zip",exdir = "./data")

plotData <- read.table("./data/household_power_consumption.txt", header=T, sep=";", na.strings="?")



## set time variable
finalData <- plotData[plotData$Date %in% c("1/2/2007","2/2/2007"),]
SetTime <-strptime(paste(finalData$Date, finalData$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
finalData <- cbind(SetTime, finalData)

head(finalData)


hist(finalData$Global_active_power, col = "red",main = "Global Active Power", xlab = "Global Active Power (kilowatts)")

##save the file to a png file
dev.copy(png,"plot1.png",width = 480, height = 480)
 dev.off()
