source("exdata-project1-common.R");

dataForPlot <- readDataForPlot();
par(oma = c(0, 0, 2, 0), mfcol=c(1,1));
hist(dataForPlot$Global_active_power, col = 'red', xlab='Global active power (kilowatts)', main='Global active power');
mtext("Plot 1", outer =  TRUE, cex = 2, adj = 0);