

Salary
Games
MinutesPlayed
#-----Building Matrices------
#how to build a matrix, 3 main ways. Can also get one directly from file
matrix()
rbind() # this binds the vectors, have the be the same length, 
cbind() #connects columns into a vector, opposite of rbind

# matrix function
?matrix
my.data = 1:20
A = matrix(my.data, 4, 5)
B = matrix(my.data,4,5,TRUE)
A[2,3]
B[2,5]
#rbind
r1 = c("I", "am", "happy")
r2 = c("what", "a","Great Day")
r3 = c(1,2,3)
C = rbind(r1,r2,r3)
C
D = cbind(r1,r2,r3)
D
#-------Naming Dimensions---------
A["Best", "Hi"]
#-----Colnames() and rownames()-----
charlie = 1:5
names(charlie) #null, no names
names(charlie) = c("a", "b","c","d","e") #unique way to give names
charlie["d"]
names(charlie)
#clear names
names(charlie) = NULL
#NAMING MATRIX DIMENSIONS
temp.vec = rep(c("a","B","zZ"), each = 3)
c("a","B","zZ")
temp.vec
?rep
Bravo = matrix(temp.vec, 3,3)
Bravo
row.names(Bravo) = c("How", "Are", "You")
Bravo
colnames(Bravo) = c("I'm", "Good", "Thanks!")
Bravo
Bravo["How", "Good"] = 6969
Bravo
rownames(Bravo) = NULL
Bravo
#----MATRIX OPERATIONS--------
Games
rownames(Games)
colnames(Games)
Games["LeBronJames", "2012"]

FieldGoals
round(FieldGoals/Games, 1)

MinutesPlayed/Games
round(MinutesPlayed/Games, 0)
MinutesPlayed
accurasy = round(FieldGoals/FieldGoalAttempts, 2)
accurasy

#----how to visualize with MATPLOT-------
?matplot()
#wont be using this a lot, just in this section
#it takes a lot of parameters
FieldGoals
t(FieldGoals) #now the columns represent the players
matplot(t(FieldGoals/FieldGoalAttempts), type = "b", pch = 15:18, col=c(1:4,6)) #for matplot, make sure the columns is what you want to plot
legend("bottomleft", inset=0.01, legend=Players, col=c(1:4,6), pch=15:18, horiz = F)
#wont use matplot that often because legend and matplot are two separate functions
#have to be very careful when use legend to make sure it matches. we are lucky here.
#there are much more powerful tools to do this

#----Subsettings----- very important concept
x = c("a","b","c","d","e")
x
#subsetting vectors is easy
x[c(1,5)]
x[1]
#subsetting vectors
Games
Games[1:3, 6:10]
Games[c(1,10),]
Games[,c("2008", "2009")]
Games[c(1),]
is.matrix(Games[c(1),]) #its a vector and not a matrix anymore...
Games[1,5] #getting one value we get a vector and not a matrices. When getting a 1 dimensional object, R just changes it and pulls out a vector

Games[1,,drop=F] #R is no longer dropping the dimension if its 1
Games[1,5, drop=F] #whenever using square brackets, R will try to guess what you want
#USE THE DROP FUNCTION!!!!!

#------Visualizing Subsets------
matplot(t(MinutesPlayed), type = "b", pch = 15:18, col=c(1:4,6))  
legend("bottomleft", inset=0.01, legend=Players, col=c(1:4,6), pch=15:18, horiz = F)
#just want to see the top 10 players...so change
Data = MinutesPlayed[1,, drop = F] #top 3 players
matplot(t(Data), type = "b", pch = 15:18, col=c(1:4,6))  
legend("bottomleft", inset=0.01, legend=Players[1, drop = F], col=c(1:4,6), pch=15:18, horiz = F)

#----- Creating your First Function------
#always have to copy that code with matplot and legend everywhere when want to use it...
#now, function
myplot = function(data, rows = 1:10){
  Data = data[rows,, drop = F] #top 3 players
  matplot(t(Data), type = "b", pch = 15:18, col=c(1:4,6))  
  legend("bottomleft", inset=0.01, legend=Players[rows, drop = F], col=c(1:4,6), pch=15:18, horiz = F)
  
}
myplot(Salary, rows = 1:3)
myplot(MinutesPlayed,3)
#setting default parameters. Now the function is vey flexible

#-------Basketball Analyzing and Driving Insights------
#salary...salary and in games statistics are separate
myplot(Salary)
myplot(Salary/Games)
myplot(Salary/FieldGoals)

#in-Game Metrics
myplot(MinutesPlayed)
myplot(Points)
#In-Game Metrics Normalized, how do we take injuries outside of the analysis?
# we can normalize in game metrics by in game metrics
myplot(FieldGoals/Games)
myplot(FieldGoals/FieldGoalAttempts)
myplot(FieldGoalAttempts/Games)
myplot(Points/Games)

#Interesting Observations
myplot(MinutesPlayed/Games)
myplot(Games)

#time is valuable
myplot(FieldGoals/MinutesPlayed)

#player style
myplot(Points/FieldGoals)


1:5

getwd()
demo()
