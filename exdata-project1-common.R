library(data.table)

#reads data fot plotting. 
#cuts to appropriate range(01/02/2007 - 02/02/2007)
#converts all original columns (except for Date and Time) to numeric
#enriches data with dateAsDate and dateTime columns
readDataForPlot <- function(){
    dt <- fread("./household_power_consumption.txt", na.strings = c("?"), sep = ";", header = TRUE, colClasses = rep("character", 9));
    DATE_FMT <- "%d/%m/%Y";
    dt$DateAsDate <- as.Date(dt$Date, format=DATE_FMT);
    #filter out unnecesary data
    dt <- dt[dt$DateAsDate >= as.Date("01/02/2007", format=DATE_FMT) & dt$DateAsDate <= as.Date("02/02/2007", format=DATE_FMT),]
    #convert all columns(except Date and Time) to numeric
    dt <- dt[, lapply(.SD, as.numeric), by=c("Date", "Time", "DateAsDate")];
    dt$datetime <- as.POSIXct(strptime(paste(dt$Date, dt$Time), "%d/%m/%Y %H:%M:%S" ));
    dt;
}