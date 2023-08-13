"Randomly Sample the iris dataset such as 80% data for training and 20% for test and create 
Logistics regression with train data, use species as target and petals width and
length as feature variables , Predict the probability of the model using test data, Create Confusion 
matrix for above test model
"


library(datasets)
library(caTools)
library(nnet)
data(iris)
set.seed(123)
split <- sample.split(iris$Species, SplitRatio = 0.8)
train_data <- subset(iris, split == TRUE)
test_data <- subset(iris, split == FALSE)
model <- multinom(Species ~ Petal.Length + Petal.Width, data = train_data)
predicted_probs <- predict(model, newdata = test_data, type = "probs")
predicted_labels <- colnames(predicted_probs)[apply(predicted_probs, 1, which.max)]
conf_matrix <- table(predicted = predicted_labels, actual = test_data$Species)
print("Confusion Matrix:")
print(conf_matrix)
accuracy <- sum(diag(conf_matrix)) / sum(conf_matrix)
cat("Overall Accuracy:", accuracy, "\n")

#by Shaik Ashfaq