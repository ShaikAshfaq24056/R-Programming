''' a. Create a data frame based on below table.
 
Month 1 2 3 4 5 6 7 8 9 10 11 12
Spends 1000 4000 5000 4500 3000 4000 9000 11000 15000 12000 7000 3000
Sales 9914 40487 54324 50044 34719 42551 94871 118914 158484 131348 78504 36284
b. Create a regression model for that data frame table to show the amount of sales(Sales) based on the 
how much the company spends (Spends) in advertising
c. Predict the Sales if Spend=13500'''


data <- data.frame(
  Month = 1:12,
  Spends = c(1000, 4000, 5000, 4500, 3000, 4000, 9000, 11000, 15000, 12000, 7000, 3000),
  Sales = c(9914, 40487, 54324, 50044, 34719, 42551, 94871, 118914, 158484, 131348, 78504, 36284)
)
print(data)
model <- lm(Sales ~ Spends, data = data)
summary(model)
new_data <- data.frame(Spends = 13500)
predicted_sales <- predict(model, newdata = new_data)
cat("Predicted Sales for Spend = 13500:", predicted_sales, "\n")