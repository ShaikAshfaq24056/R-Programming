" (i) Find any missing values(na) in features and drop the missing values if its less than 10%
 else replace that with mean of that feature.
 (ii) Apply a linear regression algorithm using Least Squares Method on “Ozone” and “Solar.R”
 (iii)Plot Scatter plot between Ozone and Solar and add regression line created by above 
 model"


library(ggplot2)
data(airquality)
missing_cols <- colnames(airquality)[colSums(is.na(airquality)) > 0]
missing_percentage <- colSums(is.na(airquality)) / nrow(airquality) * 100
for (col in missing_cols) {
  if (missing_percentage[col] < 10) {
    airquality <- airquality[!is.na(airquality[col]), ]
  } else {
    airquality[is.na(airquality[col]), col] <- mean(airquality[, col], na.rm = TRUE)
  }
}
lm_model <- lm(Ozone ~ Solar.R, data = airquality)
ggplot(airquality, aes(x = Solar.R, y = Ozone)) +
  geom_point() +
  geom_smooth(method = "lm", formula = y ~ x, se = FALSE, color = "blue") +
  labs(title = "Scatter plot of Ozone and Solar.R with Regression Line")

#by Shaik Ashfaq