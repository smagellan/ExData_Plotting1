source("exdata-project1-common.R");
source("plot2-worker.R");
dataForPlot <- readDataForPlot();

par(oma = c(0, 0, 2, 0), mfcol=c(1,1));
drawPlot2(dataForPlot);
mtext("Plot 2", outer =  TRUE, cex = 2, adj = 0);

dev.copy(png, file = "plot2.png");
dev.off();