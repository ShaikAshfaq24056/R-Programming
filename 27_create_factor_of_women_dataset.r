" Write a R program to create a factor corresponding to height of women data set , which inbuild in 
R, contains height and weights for a sample of women"


data = women
print("Women data set of height and weights:")
print(data)
height_f = cut(women$height,3)
print("Factor corresponding to height:")
print(table(height_f))

#by Shaik Ashfaq