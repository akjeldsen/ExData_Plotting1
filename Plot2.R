# Plot 2 of the assignment

# getting the date from get_data_reduce.R script
source ("./get_data_reduce.R")

# Data loaded 

# Plot 2  - a line plot, no colors
png("Plot2.png", width=480, height=480)
# x-axis is in Norwegain
with (power_subset, plot(TimeDate, Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)"))

dev.off() # Closing file



