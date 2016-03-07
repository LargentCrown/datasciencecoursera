hpc$Global_active_power <- as.numeric(as.character(hpc$Global_active_power))
hpc$Global_reactive_power <- as.numeric(as.character(hpc$Global_reactive_power))
hpc$Sub_metering_1 <- as.numeric(as.character(hpc$Sub_metering_1))
hpc$Sub_metering_2 <- as.numeric(as.character(hpc$Sub_metering_2))
hpc$Sub_metering_3 <- as.numeric(as.character(hpc$Sub_metering_3))
hpc$Voltage <- as.numeric(as.character(hpc$Voltage))
hpc$dateTime <- paste(hpc$Date, hpc$Time)

#Plot4
par(mfcol = c(2,2))
plot(strptime(hpc$dateTime, "%d/%m/%Y %H:%M:%S"),hpc$Global_active_power, 
xlab = "", type = "l", ylab = "Global Active Power(kilowatts)")
plot(strptime(hpc$dateTime, "%d/%m/%Y %H:%M:%S"),hpc$Sub_metering_1, 
xlab = "", type = "l", ylab = "Energy sub metering")
lines(strptime(hpc$dateTime, "%d/%m/%Y %H:%M:%S"),hpc$Sub_metering_2, 
type = "l", col = "Red")
lines(strptime(hpc$dateTime, "%d/%m/%Y %H:%M:%S"),hpc$Sub_metering_3, 
type = "l", col = "Blue")
legend("topright", lty = 1, col = c("Black", "Red", "Blue"), 
legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

plot(strptime(hpc$dateTime, "%d/%m/%Y %H:%M:%S"),hpc$Voltage, 
xlab = "datetime", type = "l", ylab = "Voltage")

plot(strptime(hpc$dateTime, "%d/%m/%Y %H:%M:%S"),hpc$Global_reactive_power, 
xlab = "datetime", type = "l", ylab = "Global_reactive_power")
dev.copy(png, file="Plot4.png", height=480, width=480)
dev.off()

