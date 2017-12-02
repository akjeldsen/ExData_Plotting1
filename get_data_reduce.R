# Week 1 assignment.

# Setting up my environmet
library(dplyr)
library(data.table)
library(lubridate)
options(tz="Europe/Oslo")
Sys.setenv(TZ="Europe/Oslo")

# Set my working directory
setwd("~/Dropbox/Prosjekter/ds_projects/course4/")

# Checking if I have the dataset
destfile = "./household_power_consumption.txt"
if(!file.exists(destfile)){
        # I download and unziped the dataset from https://d396qusza40orc.cloudfront.net
        
        download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", destfile="./household_power_consumption.zip")
        system("unzip ./household_power_consumption.zip")         
}

# Load and reduce the dataset step.

# Loading data with fread function for speed
df <- fread("./household_power_consumption.txt", header=TRUE, sep=";", colClasses=c("character", "character", rep("numeric",7)), na="?") 

# Getting memory usage
df_size= object.size(df)
print ( df_size, unit = 'auto')

# Converting from character to date format
df$Date <- as.Date(df$Date, "%d/%m/%Y")

# Converting to dplyr datafram
power <- tbl_df(df)

date_subset <- as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")  # The assignment requires only two dates to be used
power_subset <- subset(df, Date %in% date_subset)                  # Creating a subset of the dataframe with these two dates


# Free up the memory used so far
rm(df, power)

# Getting new memory usage
df_size= object.size(power_subset)
print ( df_size, unit = 'auto')

# Converting time to date+ time using lubridate
power_subset$TimeDate <- as.POSIXct( with(power_subset, ymd(Date) + hms(Time)) )

# Dataframe is ready for plotting




        