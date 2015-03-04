# Get the data
source("input_data.R")

# Open the PNG device
plot_filename <- "plot1.png"
png(filename=plot_filename)

# Plot the histogram
hist(df$Global_active_power,
     col="red",
     main="Global Active Power",
     xlab="Global Active Power (kilowatts)",
     ylab="Frequency")

# Close the PNG device
dev.off()
