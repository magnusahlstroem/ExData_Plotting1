#Course project 1

##loading packages
library(dplyr)
library(data.table)

setwd("H:/Dokumenter/Kurser/ExplDataAna")
url<-"https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
if (!file.exists("Data/UCMachLearn.zip")) {
        download.file(url, destfile="UCMachLearn.zip", method="libcurl")
}
if (!file.exists("Data/household_power_consumption.txt")) {
        unzip("UCMachLearn.zip")      
}

names.A<-c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", 
           "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3")

AssignData<-read.table("Data/household_power_consumption.txt",
                        sep=";", 
                        col.names=names.A,
                        skip=66637,
                        nrows=2880,
                        dec=".", 
                        na.strings = "?") %>%
        mutate(DateTime = as.POSIXct(paste(Date, Time, sep=" "), 
                                     format="%d/%m/%Y %H:%M:%S",
                                     tz="America/Chicago"),
               Date = as.Date(Date, format="%d/%m/%Y")) 

save(x=AssignData, file="Data/AssignData.Rdata")
