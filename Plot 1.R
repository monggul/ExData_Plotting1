## Plot1

  #Load Source Data

source("~/Coursera/hpower-data.R")

  # Open png device
png(filename="~/Coursera/plot1.png")

  # Make plot
hist(tbl$Global_active_power, main='Global Active Power', 
     xlab='Global Active Power (kilowatts)', col='grey')

  # Turn off device
dev.off()
