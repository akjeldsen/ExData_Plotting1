# Plot 3 of the assignment

# getting the date from get_data_reduce.R script
source ("./get_data_reduce.R")

# Data loaded 

#Plot 3 a line plot in black, red and blue colors, with legend

png("Plot3.png", width=480, height=480)

# x-axis is in Norwegain

plot(power_subset$TimeDate, power_subset$Sub_metering_1, type="l", col="black",
     xlab="", ylab="Energy sub metering")
lines(power_subset$TimeDate, power_subset$Sub_metering_2, col="red")
lines(power_subset$TimeDate, power_subset$Sub_metering_3, col="blue")
legend("topright", col=c("black", "red", "blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lty=1)

dev.off() # Closing file



