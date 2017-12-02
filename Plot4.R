# Plot 3 of the assignment

# getting the date from get_data_reduce.R script
source ("./get_data_reduce.R")

# Data loaded 


#Plot 4 - getting most of the previos plots together in a 2x2 grahics file.

png("Plot4.png", width=480, height=480)

# Setting up 2 rows, with 2 columns

par(mfrow=c(2,2))
# First plot , 1 row 1
with(power_subset, plot(TimeDate, Global_active_power,  ylab="Global Active Power", xlab="", type="l"))
# Second plot, 2, row 1
with(power_subset, plot(TimeDate, Voltage,  ylab="Voltage", xlab="datetime", type="l"))

# Third plot, 1 on row 2
plot(power_subset$TimeDate, power_subset$Sub_metering_1, type="l", col="black",
     xlab="", ylab="Energy sub metering")
lines(power_subset$TimeDate, power_subset$Sub_metering_2, col="red")
lines(power_subset$TimeDate, power_subset$Sub_metering_3, col="blue")
legend("topright", col=c("black", "red", "blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lty=1)

# Foth plot, 2 on row 2
plot(power_subset$TimeDate, power_subset$Global_reactive_power, type="n", xlab="datetime", ylab="Global_reactive_power")
lines(power_subset$TimeDate, power_subset$Global_reactive_power)

dev.off() # Closing file



