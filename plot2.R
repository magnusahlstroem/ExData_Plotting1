##Setting the working directory on my computer and loading the cleaned dataset for this assignment
setwd("H:/Dokumenter/Kurser/ExplDataAna")
load("Data/AssignData.Rdata")

##Overwriting the default Danish text in the graphs
Sys.setlocale("LC_TIME", "English")

png(filename="Figures/plot2.png")
with(AssignData, plot(DateTime, Global_active_power,
                      type="l",
                      main="",
                      ylab="Global Active Power (kilowatts)",
                      xlab="",
                      col="black"))
dev.off()