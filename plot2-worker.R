drawPlot2 <- function(dataForPlot){
    plot(dataForPlot$datetime, dataForPlot$Global_active_power, type = 'l', ylab='Global active power (kilowatts)', xlab='' );
}