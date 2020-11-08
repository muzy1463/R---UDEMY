movies <- read.csv(file.choose())

head(movies)

colnames(movies)

colnames(movies) <- c("Film", "Genre", "CriticRating", "AudienceRating", "BudgetMillions","Year")

head(movies)

str(movies)

movies$Film <- as.factor(movies$Film)
movies$Genre <- as.factor(movies$Genre)

str(movies)

summary(movies)

movies$Year <- as.factor(movies$Year)
str(movies)

# or we can also convert a value into factor as follows:

movies$Year <- factor(movies$Year)
summary(movies)
str(movies)

            #Aesthetics  
#-------------------------------------------------

library(ggplot2)

ggplot(data = movies, aes(x = CriticRating, y = AudienceRating))

#add geometry

ggplot(data = movies, aes(x = CriticRating, y = AudienceRating)) + geom_point()

#add colors

ggplot(data = movies, aes(x = CriticRating, y = AudienceRating, colour = Genre)) + geom_point()

#add size

ggplot(data = movies, aes(x = CriticRating, y = AudienceRating, colour = Genre, size = Genre)) + geom_point()

#add size - not a discrete v. for size

ggplot(data = movies, aes(x = CriticRating, y = AudienceRating, colour = Genre, size = BudgetMillions)) + geom_point()

#--------- This was first plot. We'll improve it

################  Plotting with Layers     #####################################

#this was for points
p <- ggplot(data = movies, aes(x = CriticRating, y = AudienceRating, colour = Genre, size = BudgetMillions))

p + geom_point()

p + geom_line() 

p + geom_line() + geom_point()


################## Overriding Aesthetics ####################################

q <- ggplot(data = movies, aes(x = CriticRating, y = AudienceRating, colour = Genre, size = BudgetMillions))

#add geom layer

q + geom_point()

#overriding aes

#ex1

q + geom_point(aes(size = CriticRating))

#ex2
q + geom_point(aes(colour = BudgetMillions))

#ex3

q + geom_point(aes(x = BudgetMillions))   #it doesn't change the labels watch out!!!

#change the labells:

q + geom_point(aes(x = BudgetMillions)) + xlab("Budget Millions $$$")
##### 2nd chart

#the one i drew
m <- ggplot(data = movies, aes(x = BudgetMillions, y = AudienceRating, colour = Genre)) + geom_point()
m

#ex4

q + geom_line() + geom_point()

q + geom_line(size = 1) + geom_point()



## mapping vs setting

r <- ggplot(data = movies, aes(x = CriticRating, y = AudienceRating))
r + geom_point()

#Adding Colour

#1. Mapping (what we've done so far)

r + geom_point(aes(colour = Genre))

#2. Setting: 

r + geom_point(colour = "DarkGreen")

#1. Mapping

r + geom_point(aes(size = BudgetMillions))

#Setting

r + geom_point(size = 10)

#ERRORRR:

r + geom_point(aes(size = 10)) #This doesn't give error it just draws silly

r + geom_point(aes(colour = "DarkGreen"))#This doesn't give error it just draws silly

