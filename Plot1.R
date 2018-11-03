#Load dataset
library(readr)
CardioGoodFitness <- read_csv("CardioGoodFitness.csv")
View(CardioGoodFitness)

#Convert into data frame 
Cardio_DataFrame<-as.data.frame(CardioGoodFitness)
sapply(Cardio_DataFrame,class)
     
sum(Cardio_DataFrame$Usage)
Cardio_DataFrame$Product
unique(Cardio_DataFrame$Product)->df_un
length(df_un)

#Plot
barplot(Cardio_DataFrame$Fitness,names.arg=Cardio_DataFrame$Gender)
hist(Cardio_DataFrame$Fitness,names.arg=Cardio_DataFrame$Gender)

