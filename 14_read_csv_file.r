# Write a R program to read the .csv file and display the content

movie_data = read.csv(file="movies.csv", header=TRUE, sep=",")
print("Content of the .csv file:")
print(movie_data)

#by Shaik Ashfaq