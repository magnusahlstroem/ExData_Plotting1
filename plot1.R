##Setting the working directory on my computer and loading the cleaned dataset for this assignment
setwd("H:/Dokumenter/Kurser/ExplDataAna")
load("Data/AssignData.Rdata")

png(filename="Figures/plot1.png")
with(AssignData, hist(Global_active_power,
                   main="Global Active Power",
                   xlab="Global Active Power (kilowatts)",
                   ylab="Frequency",
                   #axes=F,
                   col="red"))
dev.off()
