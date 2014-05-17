## Plot 1

  # Loads Data from the site

fileName = "consumption.zip"
file_url = "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
if(!file.exists(fileName)) {
    download.file(file_url, destfile = fileName, method = "auto")
                            }
hpc <- unz(fileName, "household_power_consumption.txt")
tbl <- read.table(hpc, sep=";", header = T, na.strings="?", 
                  colClasses = c(rep("character", 2), rep("numeric", 7)))

library("lubridate")

  # Convert dates and times to dd/mm/yyyy & hh:mm:ss
tbl$Date <- dmy(tbl$Date)
tbl$Time <- hms(tbl$Time)
  
  # Reduce data frame to 2007-02-01 & 2007-02-02
  start <- ymd('2007-02-01')
  end <- ymd('2007-02-02')
tbl <- subset(tbl, year(Date) == 2007 & month(Date) == 2 &
                       (day(Date) == 1 | day(Date) == 2))
  
  # Combine date and time
tbl$date.time <- tbl$Date + tbl$Time
