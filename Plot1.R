NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")


Total_emissions_year<- aggregate(Emissions ~ year, NEI, sum)

png('plot1.png')
barplot(height=Total_emissions_year$Emissions, names.arg=aggregatedTotalByYear$year, xlab="years", ylab=expression('total PM'[2.5]*' emission'),main=expression('Total US PM'[2.5]*' emissions'), col="Red")
dev.off()
