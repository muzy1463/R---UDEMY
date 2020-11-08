############### Histograms and Density Charts #######################

s <- ggplot(data = movies, aes(x = BudgetMillions))
s + geom_histogram(binwidth = 10)

#add colour

s + geom_histogram(binwidth = 10, aes(fill = Genre), colour = "Black")
#################### Chart 3 to be improved


#sometimes u may need density charts

s + geom_density(aes(fill = Genre))
s + geom_density(aes(fill = Genre), position = "stack")


#Starting Layer Tips


t <- ggplot(data = movies, aes(x = AudienceRating))
t + geom_histogram(binwidth = 10,
                   fill = "Black", colour = "White")

#another way

t <- ggplot(data = movies)
t + geom_histogram(binwidth = 10, aes(x = AudienceRating),
                   fill = "Black", colour = "White")
#This was the 4th chart

t + geom_histogram(binwidth = 10, aes(x = CriticRating),
                   fill = "Black", colour = "White")
#5th chart

t <- ggplot()

##############3 STATISTICAL TRANSFORMATIONS #############

?geom_smooth

u <- ggplot(data = movies, aes(x = CriticRating, y = AudienceRating, colour = Genre))

u + geom_point() + geom_smooth(fill = NA)


#Boxplots

u <- ggplot(data = movies, aes(x = Genre, y = AudienceRating, colour = Genre))
u + geom_boxplot()
u + geom_boxplot(size = 1.2)
u + geom_boxplot(size = 1.2) + geom_point()
# a tip:

u + geom_boxplot(size = 1.2) + geom_jitter()

#another way:

u + geom_jitter() + geom_boxplot(size = 1.2, alpha = 0.5)
################ 6th chart ###########33



####################### Using Facets #############

v <- ggplot(data = movies, aes(x = BudgetMillions))
v + geom_histogram(binwidth = 10, aes(fill = Genre), colour = "Black")

# facets:

v + geom_histogram(binwidth = 10, aes(fill = Genre), colour = "Black") + 
  facet_grid(Genre~.)

v + geom_histogram(binwidth = 10, aes(fill = Genre), colour = "Black") + 
  facet_grid(Genre~., scales = "free")


v + geom_histogram(binwidth = 10, aes(fill = Genre), colour = "Black") + 
  facet_grid(Genre~., scales = "free")

#scatterplots:

w <- ggplot(data = movies, aes(x = CriticRating, y = AudienceRating, colour = Genre))

w + geom_point(size = 3)

#facets

w + facet_grid(Genre~.) + geom_point(size = 3)
w +  geom_point(size = 3) + facet_grid(Genre~.)

w +  geom_point(size = 3) + facet_grid(.~Year)

w +  geom_point(size = 3) + facet_grid(Genre~Year)

w +  geom_point(size = 3) + geom_smooth() +facet_grid(Genre~Year)

w + geom_point(aes(size = BudgetMillions)) +  geom_smooth() + facet_grid(Genre~Year)


########################## Changing Coordinates ###############

#limits
#zoom

m <- ggplot(data = movies, aes(x= CriticRating, y = AudienceRating, size = BudgetMillions, colour = Genre))

m + geom_point()

m + geom_point() + xlim(50,100) + ylim(50,100)

#this will not work well always.

n <- ggplot(data = movies, aes(x = BudgetMillions))

n + geom_histogram(binwidth = 10, aes(fill = Genre), colour = "Black")

n + geom_histogram(binwidth = 10, aes(fill = Genre), colour = "Black") + ylim(0,50)  #This cuts the data above!!! It doesn't zoom.


#instead, zoom:

n + geom_histogram(binwidth = 10, aes(fill = Genre), colour = "Black") +
  coord_cartesian(ylim = c(0,50))

#improve #1
w + geom_point(aes(size = BudgetMillions)) +  geom_smooth() + facet_grid(Genre~Year)+
  coord_cartesian(ylim = c(0,100))


#############ADDING THEMES ############


o <- ggplot(data= movies, aes(x = BudgetMillions))
h <- o + geom_histogram(binwith = 10, aes(fill=Genre), colour = "Black")

#add an axis label:

h + xlab("Money Axis") + ylab("Number of Movies")

#Label formatting

h + xlab("Money Axis") + ylab("Number of Movies") + theme(axis.title.x = element_text(colour = "DarkGreen", size = 30), 
                                                          axis.title.y = element_text(colour = "Red", size = 30))

#tick mark formatting


h + xlab("Money Axis") + ylab("Number of Movies") + theme(axis.title.x = element_text(colour = "DarkGreen", size = 30), 
                                                          axis.title.y = element_text(colour = "Red", size = 30),
                                                          axis.text.x = element_text(size = 20),
                                                          axis.text.y = element_text(size = 20))

#legend formatting


h + xlab("Money Axis") + ylab("Number of Movies") + theme(axis.title.x = element_text(colour = "DarkGreen", size = 30), 
                                                          axis.title.y = element_text(colour = "Red", size = 30),
                                                          axis.text.x = element_text(size = 20),
                                                          axis.text.y = element_text(size = 20),
                                                          
                                                          legend.title = element_text(size = 30),
                                                          legend.text = element_text(size = 20))

#positioning legend


h + xlab("Money Axis") + ylab("Number of Movies") + theme(axis.title.x = element_text(colour = "DarkGreen", size = 30), 
                                                          axis.title.y = element_text(colour = "Red", size = 30),
                                                          axis.text.x = element_text(size = 20),
                                                          axis.text.y = element_text(size = 20),
                                                          legend.position = c(1,1),
                                                          legend.justification = c(1,1))
#0 is left, 1 is right.

#title of the plot

h + xlab("Money Axis") + ylab("Number of Movies") + ggtitle("Movie Budget Distribution") + theme(axis.title.x = element_text(colour = "DarkGreen", size = 30), 
                                                          axis.title.y = element_text(colour = "Red", size = 30),
                                                          axis.text.x = element_text(size = 20),
                                                          axis.text.y = element_text(size = 20),
                                                          legend.position = c(1,1),
                                                          legend.justification = c(1,1),
                                                          plot.title = element_text(hjust = 0.5, colour = "DarkBlue",
                                                          size = 40, family = "Courier"))

#in the last one, hjust = 0.5 aligns it in the center.
