" Explore the airquality dataset. It contains daily air quality measurements from New York during a 
period of five months:
• Ozone: mean ozone concentration (ppb), • Solar.R: solar radiation (Langley),
• Wind: average wind speed (mph), • Temp: maximum daily temperature in degrees Fahrenheit,
• Month: numeric month (May=5, June=6, and so on),• Day: numeric day of the month (1-31). 
i. Compute the mean temperature(don’t use build in function)
ii.Extract the first five rows from airquality.
iii.Extract all columns from airquality except Temp and Wind
iv.Which was the coldest day during the period?
v.How many days was the wind speed greater than 17 mph?"


data(airquality)
mean_temp <- sum(airquality$Temp) / length(airquality$Temp)
cat("Mean Temperature:", mean_temp, "\n")
first_five_rows <- airquality[1:5, ]
print("First Five Rows:")
print(first_five_rows)
subset_data <- airquality[, !(names(airquality) %in% c("Temp", "Wind"))]
print("Subset of Data (excluding Temp and Wind columns):")
print(subset_data)
coldest_day <- airquality[which.min(airquality$Temp), ]
cat("Coldest Day:\n")
print(coldest_day)
days_high_wind <- sum(airquality$Wind > 17)
cat("Number of days with wind speed greater than 17 mph:", days_high_wind, "\n")

#by Shaik Ashfaq