# Plot 1 of the assignment

# getting the date from get_data_reduce.R script
source ("./get_data_reduce.R")

# Data loaded 
# Open file plot1
png("plot1.png", width=480, height=480)

# Plot 1 - a historgram, should be color red

hist(power_subset$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency",col="red")

dev.off() # Closing file

