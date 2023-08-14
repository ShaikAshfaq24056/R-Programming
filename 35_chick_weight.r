''' Load dataset named ChickWeight,
 ( i).Order the data frame, in ascending order by feature name “weight” grouped by feature 
 “diet” and Extract the last 6 records from order data frame.
 (ii).a Perform melting function based on “Chick", "Time", "Diet" features as ID variables
b. Perform cast function to display the mean value of weight grouped by Diet
c. Perform cast function to display the mode of weight grouped by Diet
'''


library(reshape2)
data("ChickWeight")
ordered_data <- ChickWeight[order(ChickWeight$weight), ]
last_6_records <- tail(ordered_data, 6)
melted_data <- melt(last_6_records, id.vars = c("Chick", "Time", "Diet"))
mean_weight_by_diet <- dcast(melted_data, Diet ~ variable, mean)
mode_weight_by_diet <- dcast(melted_data, Diet ~ variable, function(x) {
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
})
print("Last 6 records:")
print(last_6_records)
print("Mean weight grouped by Diet:")
print(mean_weight_by_diet)
print("Mode of weight grouped by Diet:")
print(mode_weight_by_diet)

#by Shaik Ashfaq