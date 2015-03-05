# Get the data
source("input_data.R")

# Open the PNG device
png(filename="plot2.png", bg="transparent")

# Plot the line graph
with(df,
     plot(DateTime, Global_active_power, type="l",
          ylab="Global Active Power (kilowatts)",
          xlab="")
)

# Close the PNG device
dev.off()
