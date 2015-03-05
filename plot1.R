# Get the data
source("input_data.R")

# Open the PNG device
png(filename="plot1.png", bg="transparent")

# Plot the histogram
with(df,
     hist(Global_active_power, col="red",
          main="Global Active Power",
          xlab="Global Active Power (kilowatts)",
          ylab="Frequency")
     )

# Close the PNG device
dev.off()
