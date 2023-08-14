" (i)Get the Summary Statistics of air quality dataset
 (ii)Melt airquality data set and display as a long – format data?
 (iii)Melt airquality data and specify month and day to be “ID variables”?
 (iv)Cast the molten airquality data set with respect to month and date features
 (v) Use cast function appropriately and compute the average of Ozone, Solar.R , Wind and 
temperature per month?"

summary(airquality)
library(reshape2)
melted_data <- melt(airquality)
head(melted_data)
melt_data <- melt(airquality, id.vars = c("Month", "Day"))
head(melted_data)
casted_data <- dcast(melted_data, Month + Day ~ variable)
head(casted_data)
avg_per_month <- dcast(melted_data, Month ~ variable, fun.aggregrate = mean)
avg_per_month

#by Shaik Ashfaq