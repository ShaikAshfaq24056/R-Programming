" Write a R program to extract the five of the levels of factor created from a random sample from 
the LETTERS (Part of the base R distribution.)"

L = sample(LETTERS,size=50,replace=TRUE)
print("Original data:")
print(L)
f = factor(L)
print("Original factors:")
print(f)
print("Only five of the levels")
print(table(L[1:5]))

#by Shaik Ashfaq