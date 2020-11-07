#SUBSETTING

x <- c("a","b","c","d","e")

x
x[c(1,5)] #this is a subset
x[1]


Games

Games[1:3,6:10]

Games[c(1,10),]

Games[, c("2008","2009")]

Games[1,]

is.matrix(Games[1,])
is.vector(Games[1,])

Games[1, 5]
Games[1,, drop = F] #Now it gives the name of the row and R makes it a matrix, not vector.
Games[1,5, drop = F]

