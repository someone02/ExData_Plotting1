# Get the data
source("input_data.R")

# Open the PNG device
png(filename="plot3.png", bg="transparent")

# Plot the line graph for sub meterings
with(df, {
  plot(DateTime, Sub_metering_1, type="l", col="black",
       ylab="Energy sub metering",
       xlab="")
  lines(DateTime, Sub_metering_2, col="red")
  lines(DateTime, Sub_metering_3, col="blue")
})
# Make the legend
legend("topright",
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col=c("black", "red", "blue"),
       lty=c(1, 1, 1),
       lwd=c(1, 1, 1))

# Close the PNG device
dev.off()
