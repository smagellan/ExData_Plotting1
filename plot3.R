source("exdata-project1-common.R");
source("plot3-worker.R");

dataForPlot <- readDataForPlot();

par(oma = c(0, 0, 2, 0), mfcol=c(1,1));
drawPlot3(dataForPlot);
mtext("Plot 3", outer =  TRUE, cex = 2, adj = 0);


dev.copy(png, file = "plot3.png");
dev.off();