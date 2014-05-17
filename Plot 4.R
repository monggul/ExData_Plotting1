# Load data
source("~/Coursera/hpower-data.R")

# Open device
png(filename="~/Coursera/plot4.png")

## Make plots

par(mfrow=c(2,2))

# Top left
plot(tbl$date.time, tbl$Global_active_power,
     ylab='Global Active Power', xlab='', type='l')

# Top right
plot(tbl$date.time, tbl$Voltage,
     xlab='datetime', ylab = 'Voltage', type='l')

# Bottom left
plot(tbl$date.time, tbl$Sub_metering_1,
     xlab = '', ylab = 'Energy sub metering', type='l')
lines(tbl$date.time, tbl$Sub_metering_2, col = 'red')
lines(tbl$date.time, tbl$Sub_metering_3, col = 'blue')
legend('topright', 
       legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),
       col = c('black', 'red', 'blue'), 
       lty = 'solid', bty='n')

# Bottom right
plot(tbl$date.time, tbl$Global_reactive_power,
     xlab='datetime', ylab='Global_reactive_power', type='l')

# Turn off device
dev.off()
