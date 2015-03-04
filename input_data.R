# Assumes that data file is already in the directory
datafile <- "household_power_consumption.txt"

# The range of rows are here
skip_rows <- 66637     # First date on line 66638
nrows <- 69517-66638+1 # Last date on line 69517

# Use the following names for the column
colnames <- c("Date",
	      "Time",
	      "Global_active_power",
	      "Global_reactive_power",
	      "Voltage",
	      "Global_intensity",
	      "Sub_metering_1",
	      "Sub_metering_2",
	      "Sub_metering_3")

# Read in the file
df <- read.table(datafile,
		 header=FALSE,
		 sep=";",
		 na.strings="?",
		 skip=skip_rows,
		 nrows=nrows,
		 col.names=colnames)

# Create a datetime column
df$DateTime <- strptime(paste(df$Date, df$Time), format="%d/%m/%Y %H:%M:%S")

# And drop the original date and time
df <- subset(df, select=-c(Date,Time))
