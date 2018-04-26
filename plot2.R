data <- fread("household_power_consumption.txt")
data1<-subset(data, Date=="1/2/2007" | Date=="2/2/2007")
data1$Date<-as.Date(data1$Date, format = "%d/%m/%Y")
time<-data1$Time
date<-data1$Date
x<-paste(date, time)
y<-as.POSIXct(x)
data1$DateTime <- y
plot(data1$DateTime, as.numeric(data1$Global_active_power), type = "l", ylab = "Global Active Power (kilowatts)", xlab="")
