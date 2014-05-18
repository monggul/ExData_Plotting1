##Sample 2

# Load data
source("~/Coursera/hpower-data.R")

# Open png device
png(filename="~/Coursera/plot2.png")

# Make plot
plot(tbl$date.time, tbl$Global_active_power,
     ylab="Global Active Power (kilowatts)", xlab="", type="l")

# Turn off device
dev.off()