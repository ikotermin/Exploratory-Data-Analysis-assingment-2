## This first line will likely take a few seconds. Be patient!
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

Balt<- subset(NEI,fips=="24510")

png("plot2.png")

barplot(tapply(X=Balt$Emissions, INDEX=Balt$year, FUN=sum), 
        main='Total Emission in Baltimore City, MD', 
        xlab='Year', ylab=expression('PM'[2.5]), col="Green")
dev.off()
