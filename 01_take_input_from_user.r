" Write a R program to take input from the user (name and age) and display the values. Also print 
the version of R installation"

# Take input from the user
name <- readline("Enter your name: ")
age <- as.integer(readline("Enter your age: "))

# Display the values
cat("Your name is:", name, "\n")
cat("Your age is:", age, "\n")

# Print R version
cat("R version:", R.version$version.string, "\n")


# NOTE-1 : "cat" is used when we want to store the value in the string.
# NOTE-2 : "print" is used when we want to print statements or values.
# by Shaik Ashfaq
