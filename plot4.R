##Setting the working directory on my computer and loading the cleaned dataset for this assignment
setwd("H:/Dokumenter/Kurser/ExplDataAna")
load("Data/AssignData.Rdata")

##Overwriting the default Danish text in the graphs
Sys.setlocale("LC_TIME", "English")

png(filename="Figures/plot4.png")

par(mfrow=c(2,2))

with(AssignData, plot(DateTime, Global_active_power,
                      type="l",
                      main="",
                      ylab="Global Active Power (kilowatts)",
                      xlab="",
                      col="black"))

with(AssignData, plot(DateTime, Voltage,
                      type="l",
                      xlab="datetime"))

with(AssignData, { 
        plot(DateTime, Sub_metering_1,
             type="n",
             main="",
             ylab="Energy sub metering",
             xlab="")
        lines(DateTime, Sub_metering_1, col="black")
        lines(DateTime, Sub_metering_2, col="red")
        lines(DateTime, Sub_metering_3, col="blue")
        legend("topright", 
               c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
               lty=1,
               col=c("black", "red", "blue"),
               bty="n")
})

with(AssignData, plot(DateTime, Global_reactive_power,
                      type="l",
                      xlab="datetime"))

dev.off()