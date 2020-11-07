#Named Vectors
Charlie <- 1:5
Charlie

names(Charlie) <- c("a","b","c","d","e")
names(Charlie)

Charlie
Charlie["a"]

Charlie["d"]

#clear names

names(Charlie) <- NULL
names(Charlie)

#Naming Matrix Dimensions 1

temp.vec <- rep(c("a","B","zZ"), times = 3)
c("a","B","zZ")
temp.vec

Bravo <- matrix(temp.vec,3,3)
Bravo

rownames(Bravo)

rownames(Bravo) <- c("How","are","you?")
Bravo

colnames(Bravo) <- c("M", "u", "zy")
Bravo
Bravo[2,2] <- 4
Bravo
Bravo["are", "u"] <- 0
Bravo

rownames(Bravo)
