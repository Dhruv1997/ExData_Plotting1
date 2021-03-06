par(mfrow=c(2,2), mar=c(4,4,2,1), oma=c(0,0,2,0))

plot(Energy$dateTime, Energy$Global_active_power,type="l",ylab = "Global Active Power",xlab = "")
plot(Energy$dateTime,Energy$Voltage,type = "l",ylab = "Voltage",xlab = "datetime")


plot(Energy$dateTime,Energy$Sub_metering_1,type = "l",ylab = "Energy sub meeting",xlab = "")
points(Energy$dateTime,Energy$Sub_metering_2,type = "l",col="red")
points(Energy$dateTime,Energy$Sub_metering_3,type = "l",col="blue")
legend("topright",col=c("black","blue","red"),lwd=c(1,1,1),legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

plot(Energy$dateTime,Energy$Global_reactive_power,type = "l",ylab="Global_reactive_power",xlab ="datetime")
dev.copy(png,"plot4.png",width=480,height=480)
dev.off()

