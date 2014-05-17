# Load data
source("~/Coursera/hpower-data.R")

# Open png device
png(filename = "~/Coursera/plot3.png")

# Make plot
plot(tbl$date.time, tbl$Sub_metering_1, type = 'l',
     xlab = '', ylab = "Energy sub metering")
lines(tbl$date.time, tbl$Sub_metering_2, col = 'red')
lines(tbl$date.time, tbl$Sub_metering_3, col = 'blue')
legend("topright", 
       legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),
       col = c('black', 'red', 'blue'), 
       lty = 'solid')

# Turn off device
dev.off()
