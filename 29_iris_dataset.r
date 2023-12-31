" Iris dataset is a very famous dataset in almost all data mining, machine learning courses, and it 
has been an R build-in dataset. The dataset consists of 50 samples from each of three species of Iris 
flowers (Iris setosa, Iris virginica and Iris versicolor). Four features(variables) were measured from 
each sample, they are the length and the width of sepal and petal, in centimetres. Perform the 
following EDA steps .
(i)Find dimension, Structure, Summary statistics, Standard Deviation of all features.
(ii)Find mean and standard deviation of features groped by three species of Iris flowers (Iris setosa, 
Iris virginica and Iris versicolor)
(iii)Find quantile value of sepal width and length
(iV)create new data frame named iris1 which have a new column name Sepal.Length.Cate that 
categorizes “Sepal.Length” by quantile
(V) Average value of numerical varialbes by two categorical variables: Species and 
Sepal.Length.Cate:
(vi) Average mean value of numerical varialbes by Species and Sepal.Length.Cate
(vii)Create Pivot Table based on Species and Sepal.Length.Cate."


data("iris")
cat("i. Dimension:\n")
print(dim(iris))
cat("\n")
cat("ii. Structure:\n")
str(iris)
cat("\n")
cat("iii. Summary Statistics:\n")
summary(iris)
cat("\n")
cat("iv. Standard Deviation of all Features:\n")
sapply(iris[, 1:4], sd)
cat("\n")
mean_sd_by_species <- aggregate(. ~ Species, data = iris, FUN = function(x) c(mean = mean(x), sd = sd(x)))
cat("ii. Mean and Standard Deviation of Features Grouped by Species:\n")
print(mean_sd_by_species)
cat("\n")
quantiles_sepal_width <- quantile(iris$Sepal.Width, probs = c(0.25, 0.5, 0.75))
quantiles_sepal_length <- quantile(iris$Sepal.Length, probs = c(0.25, 0.5, 0.75))
cat("iii. Quantile Values of Sepal Width:\n")
print(quantiles_sepal_width)
cat("\n")
cat("Quantile Values of Sepal Length:\n")
print(quantiles_sepal_length)
cat("\n")
quantile_labels <- cut(iris$Sepal.Length, breaks = quantiles_sepal_length, labels = c("Q1", "Q2", "Q3"))
iris1 <- cbind(iris, Sepal.Length.Cate = quantile_labels)
cat("iv. New Data Frame iris1 with Categorized Sepal.Length:\n")
print(head(iris1))
cat("\n")
avg_by_species_length_cate <- aggregate(. ~ Species + Sepal.Length.Cate, data = iris1, FUN = mean)
cat("v. Average Value of Numerical Variables by Species and Sepal.Length.Cate:\n")
print(avg_by_species_length_cate)
cat("\n")
avg_mean_by_species_length_cate <- aggregate(. ~ Species + Sepal.Length.Cate, data = iris1, FUN = function(x) mean(x))
cat("vi. Average Mean Value of Numerical Variables by Species and Sepal.Length.Cate:\n")
print(avg_mean_by_species_length_cate)
cat("\n")
pivot_table <- reshape2::dcast(iris1, Species ~ Sepal.Length.Cate, value.var = "Sepal.Length", mean)
cat("vii. Pivot Table based on Species and Sepal.Length.Cate:\n")
print(pivot_table)