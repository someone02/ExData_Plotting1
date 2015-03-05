# Get the data
source("input_data.R")

# Open the PNG device
png(filename="plot4.png", bg="transparent")

# Create 2x2 subplot
par(mfrow=c(2,2))

with(df, {
  # Subplot 1 - line plot of Global active power
  plot(DateTime, Global_active_power, type="l",
       ylab="Global Active Power",
       xlab="")

  # Subplot 2 - line plot of Voltage
  plot(DateTime, Voltage, type="l",
       ylab="Voltage",
       xlab="datetime")

  # Subplot 3 - Sub meterings
  plot(DateTime, Sub_metering_1, type="l", col="black",
       ylab="Energy sub metering",
       xlab="")
  lines(DateTime, Sub_metering_2, col="red")
  lines(DateTime, Sub_metering_3, col="blue")
  # Make the legend
  legend("topright",
         bty="n",
         legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
         col=c("black","red","blue"),
         lty=c(1,1,1),
         lwd=c(1,1,1))

  # Subplot 4 - Reactive power
  plot(DateTime, Global_reactive_power, type="l",
       ylab="Global_reactive_power",
       xlab="datetime")
})

# Close the PNG device
dev.off()
