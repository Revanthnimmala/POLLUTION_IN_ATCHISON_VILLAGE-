#installing packages

install.packages('tidyverse')
install.packages("corrplot")

library(corrplot)
library(tidyverse)

#Reading csv files into r
air <- read.csv('C:/Users/revan/OneDrive/Documents/AIT580/Atchinson1.csv',header = TRUE)
air
#scatter plots

ggplot(air,aes(air$Ozone, air$Wind.Speed))+geom_point(color="violet",pch=17)+
  labs(title="Scatter plot of ozone and wind speed",x="0zone(units in particles per million)",y="wind speed(Miles per hr")


ggplot(air,aes(air$Wind.Direction,air$Wind.Speed))+geom_point(color="blue",pch=17)+
          labs(titsle="Scatter plot of Wind direction and wind speed",x="wind direction(In 360 scale)",y="wind origin(Miles per hr")

# Bargraphs       
dat<- read.csv('C:/Users/revan/OneDrive/Documents/AIT580/dt.csv',header = TRUE)

#read.csv is for read data file file into r
p<-ggplot(data=dat)+
  geom_col(mapping=aes(x=ï..Type,y=Total,fill=ï..Type))

p + ggtitle("Air contents Bargraph") +xlab("Contents in the air")+ylab("Proportions")


#correlation matrix
air2 <- read.csv('C:/Users/revan/OneDrive/Documents/AIT580/corr.csv',header = TRUE)


air2$Wind.Origin <- NULL

air2$Date <- NULL
cor(air2)


#Boxplots
boxplot(air$Wind.Speed~air$Wind.Origin, main = "boxplot of wind speed and origin", xlab="wind origin",ylab="wind speed(miles per hr)",col="gold")

boxplot(air$Ozone~air$Wind.Speed, main = "boxplot of ozone and wind speed", xlab="ozone(units in particles per million)",ylab="wind speed(miles per hr)",col="red")

