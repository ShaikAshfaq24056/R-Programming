" a. Create Box plot for “weight” grouped by “Diet”
 b. Create a Histogram for “weight” features belong to Diet- 1 category
 c. Create Scatter plot for “ weight” vs “Time” grouped by Diet
"


library(datasets)
data("ChickWeight")
boxplot(weight ~ Diet, data = ChickWeight, main = "Box plot of Weight by Diet")
hist(ChickWeight$weight[ChickWeight$Diet == 1], 
     main = "Histogram of Weight for Diet 1", 
     xlab = "Weight")
plot(weight ~ Time, data = ChickWeight, col = Diet, 
     main = "Scatter plot of Weight vs Time by Diet",
     xlab = "Time",
     ylab = "Weight")
legend("topright", legend = levels(ChickWeight$Diet), col = 1:4, pch = 1)
Sys.sleep(10)

#by Shaik AShfaq