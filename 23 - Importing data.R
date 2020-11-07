
#first method

stats <- read.csv(file.choose())

stats

getwd()
setwd("C:\\Users\\MUSTAFA\\Desktop\\R Documents\\R Course - Udemy\\Data Frames")

data <- read.csv("data.csv")

data
          
str(data)
#--------------------------------------

stats
nrow(stats)
ncol(stats)

#Imported 195 rows, 5 columns


head(stats)
tail(stats)


head(stats, n = 10)
tail(stats, 7)


str(stats) #structure
summary(stats)
#Exploring Data


#-----------------------------------------

stats
stats[3,3]
stats[3, "Birth.rate"]

stats$Internet.users[2]

stats[, "Internet.users"][2]

levels(stats$Income.Group)
str(stats)




#------------------------------------------ 
#Basic Operations with DF

stats[1:10,]
stats[3:9,]
stats[c(4,100),]

#remember how [] works
stats[1,] #no need for drop = F

stats[,1]

stats[,1,drop = F] 

#multiply columns

stats$Birth.rate * stats$Internet.users
stats$Birth.rate + stats$Internet.users

#add column

head(stats)
stats[, "Muzy"] = 1
stats
stats$Muzzy = 111
stats
stats$multiplied = stats$Birth.rate * stats$Internet.users
stats

#test of knowledge

stats$xyz <- 1:5
stats

#remove a column

stats$xyz <- NULL
stats$Muzzy <- NULL
stats$Muzy <- NULL
stats$multiplied <- NULL
head(stats)
stats$xyz <- NULL
stats
head(stats)
