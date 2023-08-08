" Write a R program to create a sequence of numbers from 20 to 50 and find the mean of numbers 
from 20 to 60 and sum of numbers from 51 to 91"

# Create a sequence of numbers from 20 to 50
sequence_20_to_50 <- seq(20, 50)

# Calculate the mean of numbers from 20 to 60
mean_20_to_60 <- mean(sequence_20_to_50[sequence_20_to_50 <= 60])

# Create a sequence of numbers from 51 to 91
sequence_51_to_91 <- seq(51, 91)

# Calculate the sum of numbers from 51 to 91
sum_51_to_91 <- sum(sequence_51_to_91)

# Print the results
cat("Sequence from 20 to 50:", sequence_20_to_50, "\n")
cat("Mean of numbers from 20 to 60:", mean_20_to_60, "\n")
cat("Sequence from 51 to 91:", sequence_51_to_91, "\n")
cat("Sum of numbers from 51 to 91:", sum_51_to_91, "\n")

# NOTE-1 : "cat" is used when we want to store the value in the string.
# NOTE-2 : "print" is used when we want to print statements or values.
# by Shaik Ashfaq