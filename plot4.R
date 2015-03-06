source("exdata-project1-common.R");
source("plot2-worker.R");
source("plot3-worker.R");

dataForPlot <- readDataForPlot();

par(mfcol = c(2, 2))
drawPlot2(dataForPlot);
drawPlot3(dataForPlot);

with(dataForPlot, {
    plot(datetime, Voltage, type = 'l');
    plot(datetime, Global_reactive_power, type = 'l');
});
mtext("Plot 4", outer =  TRUE, cex = 2, adj = 0);

dev.copy(png, file = "plot4.png");
dev.off();