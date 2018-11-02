library(readr)
CardioGoodFitness <- read_csv("CardioGoodFitness.csv")
View(CardioGoodFitness)

#Convert into data frame 
Cardio_DataFrame<-as.data.frame(CardioGoodFitness)
#Check data Frame
Cardio_DataFrame
#Strcture
str(Cardio_DataFrame)

#Variable Count
Col_Count<-ncol(Cardio_DataFrame)
#Col_Count

#Obesrvation count
row_count<-nrow(Cardio_DataFrame)
#row_count

Data_sta<-c("Cardio_DataFrame_Column_Count"=Col_Count,"Cardio_DataFrame_Row_count"=row_count)
print(Data_sta)

#Variable Class 
#class(Cardio_DataFrame)
sapply(Cardio_DataFrame,class)

#To check number of levels of product
Cardio_DataFrame[,"Product"]->One_col
factor(One_col)

