"Write a R program to call the (built-in) dataset airquality. Check whether it is a data frame or 
not? Order the entire data frame by the first and second column. remove the variables 'Solar.R' and 
'Wind' and display the data frame"


data(airquality)
if (is.data.frame(airquality)) {
  cat("airquality is a data frame.\n")
} else {
  cat("airquality is not a data frame.\n")
}
ordered_airquality <- airquality[order(airquality$Month, airquality$Day), ]
updated_airquality <- ordered_airquality[, !(names(ordered_airquality) %in% c('Solar.R', 'Wind'))]
cat("\nOrdered Data Frame with 'Solar.R' and 'Wind' Removed:\n")
print(updated_airquality)

#by Shaik Ashfaq