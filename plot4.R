# Get the data
source("input_data.R")

# Open the PNG device
plot_filename <- "plot4.png"
png(filename=plot_filename)

# Create 2x2 subplot
par(mfrow=c(2,2))

# Subplot 1 - line plot of Global active power
plot(df$DateTime, df$Global_active_power,
     type="l",
     ylab="Global Active Power",
     xlab="")

# Subplot 2 - line plot of Voltage
plot(df$DateTime, df$Voltage,
     type="l",
     ylab="Voltage",
     xlab="datetime")

# Subplot 3 - Sub meterings
plot(df$DateTime, df$Sub_metering_1,
     type="l",
     col="black",
     ylab="Energy sub metering",
     xlab="")
lines(df$DateTime, df$Sub_metering_2, col="red")
lines(df$DateTime, df$Sub_metering_3, col="blue")
# Make the legend
legend("topright",
	bty="n",
	legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
	col=c("black","red","blue"),
	lty=c(1,1,1),
	lwd=c(1,1,1))

# Subplot 4 - Reactive power
plot(df$DateTime, df$Global_reactive_power,
     type="l",
     ylab="Global_reactive_power",
     xlab="datetime")

# Close the PNG device
dev.off()
