par(mfrow = c(1,1))
par(mfrow = c(2,2) )

#plot.new()

#plot(finalData$SetTime,finalData$Global_active_power)

## Top Left
plot(finalData$SetTime,finalData$Global_active_power, xlab = "", ylab ="Global Active Power",type = "l" )

## Top Right

plot(finalData$SetTime,finalData$Voltage, xlab = "datetime", ylab ="Voltage",type = "s")


## Bottom Left

columnlines <- c("black","red","blue")
legendlabels <- c("Sub_metering_1","Sub_metering_2","Sub_metering_3")


plot(finalData$SetTime, finalData$Sub_metering_1,type = "l",xlab = "", ylab ="Energy sub metering", col = columnlines[1] )

lines(finalData$SetTime,finalData$Sub_metering_2,type = "l",col = columnlines[2])
lines(finalData$SetTime,finalData$Sub_metering_3,type = "l",col = columnlines[3])


legend("topright", col = columnlines,lty = "solid", legend = legendlabels ,bty = "n"  )

## Bottom Right

plot(finalData$SetTime, finalData$Global_reactive_power, type = "l", ylab = "Global_reactive_power", xlab = "datetime" )



dev.copy(png,"plot4.png",width = 480, height = 480)
dev.off()