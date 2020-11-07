#even a single character or number in R is stored as a vector.

firstVector <- c(3,45,56,732)
firstVector

x <- is.numeric(firstVector)

y <- is.integer(firstVector) #L koymadigimiz için FALSE

secondVector <- c(3L,45L,56L,732L)
z <- is.integer(secondVector) 

m <- is.double(firstVector)

v2 <- c(3L, 12L, 243L, 0L)
is.numeric(v2)
is.integer(v2)
is.double(v2)

v3 <- c("a","b23","Hello")
v3
is.numeric(v3)
is.character(v3)

v4 <- c("a","b",3)
#here v4 takes 3 as "3" as character.
#you cannot make a vector of both character & integer.
v4

seq() #sequence - like ':'
rep() #replicate

seq(1,15)
1:15
seq(1:15)
seq(1,15,2) #last parameter is step
z <- seq(1,15,4)
z


rep(3, 50) #3'ü 50 kere yazip vektör yap.
d <- rep(3,5)
d
rep("a", 5)

x <- c(80,20)
rep(x,2)
