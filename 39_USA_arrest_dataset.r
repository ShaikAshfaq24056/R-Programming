''' Explore the USArrests dataset, contains the number of arrests for murder, assault, and rape for 
each of the 50 states in 1973. It also contains the percentage of people in the state who live in an 
urban area.
 (i) a. Explore the summary of Data set, like number of Features and its type. Find the number 
 of records for each feature. Print the statistical feature of data
 b. Print the state which saw the largest total number of rape
 c. Print the states with the max & min crime rates for murder
(ii).a. Find the correlation among the features
 b. Print the states which have assault arrests more than median of the country
 c. Print the states are in the bottom 25% of murder
 (iii). a. Create a histogram and density plot of murder arrests by US stat
 b. Create the plot that shows the relationship between murder arrest rate and proportion 
 of the population that is urbanised by state. Then enrich the chart by adding assault 
 arrest rates (by colouring the points from blue (low) to red (high)).
 c. Draw a bar graph to show the murder rate for each of the 50 states . '''


data("USArrests")
print("Summary of Data Set:")
str(USArrests)
summary(USArrests)
largest_rape_state <- rownames(USArrests)[which.max(USArrests$Rape)]
cat("State with the largest total number of rape:", largest_rape_state, "\n")
max_murder_state <- rownames(USArrests)[which.max(USArrests$Murder)]
min_murder_state <- rownames(USArrests)[which.min(USArrests$Murder)]
cat("State with max murder rate:", max_murder_state, "\n")
cat("State with min murder rate:", min_murder_state, "\n")
correlation_matrix <- cor(USArrests)
print("Correlation Matrix:")
print(correlation_matrix)
median_assault <- median(USArrests$Assault)
states_above_median_assault <- rownames(USArrests)[USArrests$Assault > median_assault]
cat("States with assault arrests more than median:", states_above_median_assault, "\n")
murder_percentile <- quantile(USArrests$Murder, 0.25)
states_bottom_25_murder <- rownames(USArrests)[USArrests$Murder < murder_percentile]
cat("States in the bottom 25% of murder:", states_bottom_25_murder, "\n")
hist(USArrests$Murder, main = "Histogram of Murder Arrests", xlab = "Murder Arrests")
lines(density(USArrests$Murder), col = "red")
plot(USArrests$UrbanPop, USArrests$Murder, main = "Murder Arrest Rate vs. Urban Population",
     xlab = "Urban Population", ylab = "Murder Arrest Rate", col = USArrests$Assault)
barplot(USArrests$Murder, names.arg = rownames(USArrests), main = "Murder Rate by State",
        xlab = "State", ylab = "Murder Rate", col = "blue")

#by Shaik Ashfaq