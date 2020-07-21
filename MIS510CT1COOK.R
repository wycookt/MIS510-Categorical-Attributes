vehicle.df <- read.csv("ToyotaCorolla.csv", header = TRUE) # load data
dim(vehicle.df) #find the dimension of data frame
head(vehicle.df) #show the first six rows
View(vehicle.df) #show all the data in a new tab

vehicle.df[1:10, 1] #show first 10 rows of first column
vehicle.df[1:10, ] #first 10 rows of each column
vehicle.df[5, 1:10] #show the fifth row of the first 10 columns
vehicle.df[5, c(1:2, 4, 8:10)] #show the fifth row of some columns
vehicle.df$Model[1:10] #show the first 10 rows of the first column
length(vehicle.df$Model) #find the length of the first column
mean(vehicle.df$Price) #find the mean
summary(vehicle.df$Model) #Summary of each column 

xtotal <- model.matrix(~ 0 + Fuel_Type + Color, data = vehicle.df)
xtotal <- as.data.frame(xtotal)
t(t(names(xtotal)))
head(xtotal)

xtotal <- xtotal[,-4]
