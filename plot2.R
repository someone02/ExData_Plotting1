# Get the data
source("input_data.R")

# Open the PNG device
plot_filename <- "plot2.png"
png(filename=plot_filename)

# Plot the line graph
plot(df$DateTime, df$Global_active_power,
     type="l",
     ylab="Global Active Power (kilowatts)",
     xlab="")

# Close the PNG device
dev.off()
