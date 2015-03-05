drawPlot3 <- function(dataForPlot){
    with(dataForPlot, {
        xrange <- range(datetime);
        yrange <- range(Sub_metering_1, Sub_metering_2, Sub_metering_3);
        
        
        plot(xrange, yrange, ylab='Energy sub metering', xlab='', type = 'n');
        
        lines(datetime, Sub_metering_1, col = 'black');
        lines(datetime, Sub_metering_2, col = 'red');
        lines(datetime, Sub_metering_3, col = 'blue');
    });
    
    legend("topright", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = c(1, 1, 1));
}