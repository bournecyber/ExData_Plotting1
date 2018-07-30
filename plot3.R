columnlines <- c("black","red","blue")
legendlabels <- c("Sub_metering_1","Sub_metering_2","Sub_metering_3")


plot(finalData$SetTime, finalData$Sub_metering_1,type = "l",xlab = "", ylab ="Energy sub metering", col = columnlines[1] )

lines(finalData$SetTime,finalData$Sub_metering_2,type = "l",col = columnlines[2])
lines(finalData$SetTime,finalData$Sub_metering_3,type = "l",col = columnlines[3])


legend("topright", col = columnlines,lty = "solid", legend = legendlabels   )

dev.copy(png,"plot3.png",width = 480, height = 480)
dev.off()