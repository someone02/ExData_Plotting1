# Get the data
source("input_data.R")

# Open the PNG device
plot_filename <- "plot3.png"
png(filename=plot_filename)

# Plot the line graph for sub meterings
plot(df$DateTime, df$Sub_metering_1,
     type="l",
     col="black",
     ylab="Energy sub metering",
     xlab="")
lines(df$DateTime, df$Sub_metering_2, col="red")
lines(df$DateTime, df$Sub_metering_3, col="blue")
# Make the legend
legend("topright",
	legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
	col=c("black","red","blue"),
	lty=c(1,1,1),
	lwd=c(1,1,1))

# Close the PNG device
dev.off()
