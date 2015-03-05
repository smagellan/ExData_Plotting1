library(data.table)

dt <- fread("./household_power_consumption.txt", na.strings = c("?"), sep = ";", header = TRUE, colClasses = rep("character", 9));
DATE_FMT <- "%d/%m/%Y";
dt$Date <- as.Date(dt$Date, format=DATE_FMT);
#filter out unnecesary data
dt <- dt[dt$Date >= as.Date("01/02/2007", format=DATE_FMT) & dt$Date <= as.Date("02/02/2007", format=DATE_FMT),]
#convert all columns(except Date and Time) to numeric
dt <- dt[, lapply(.SD, as.numeric), by=c("Date", "Time")];

hist(dt$Global_active_power, col = 'red', xlab='Global active power (kilowatts)', main='Global active power');