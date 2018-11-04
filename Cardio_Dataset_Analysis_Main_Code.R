######CardioGoodFitness Data Analysis######

####Import Data Set
library(readr)
CardioGoodFitness <- read_csv("CardioGoodFitness.csv")
View(CardioGoodFitness)

#Convert into daraframe
Cardio_DataFrame<-as.data.frame(CardioGoodFitness)

###Dataset structure
summary(CardioGoodFitness)
str(Cardio_DataFrame)

##No of Variable in in CardioGoodFitness dataset
paste0("No of Variable Present in CardioGoodFitness dataset :",ncol(Cardio_DataFrame))

##No of Obervations in in CardioGoodFitness dataset 
paste0("No of obesarvation in CardioGoodFitness dataset :",nrow(Cardio_DataFrame))

##what are the variable inCardioGoodFitness dataset
sapply(Cardio_DataFrame, colnames)

##No of Product present in data set and it's name
paste0("No of Product present in data set CardioGoodFitness is:")
length(unique(Cardio_DataFrame$Product))
paste0("Product name which present in CardioGoodFitness data det")
unique(Cardio_DataFrame$Product)

##Find different Age Category in dataset CardioGoodFitness
paste0("Different Age Cat in dataset CardioGoodFitness:")
unique(Cardio_DataFrame$Age)
paste0("Total no. of Age Category in dataset CardioGoodFitness")
length(unique(Cardio_DataFrame$Age))

##Find Different education level
paste("Different Education levels present in dataset CardioGoodFitness")
unique(Cardio_DataFrame$Education)
paste("Total no. of education levels in dataset CardioGoodFitness:")
length(unique(Cardio_DataFrame$Education))


###Product and it's Usage
aggregate(Cardio_DataFrame$Usage,by=list(Cardio_DataFrame$Product),FUN=sum)->product_df
as.data.frame(product_df)->product_df1
names(product_df1)<-c("Product Name","Total Product usage Count")
paste("Prodct and it's total number of usage:")
product_df1
paste("Graphict Representatioon of:Prodct and it's total number of usage ")
barplot(product_df1$`Total Product usage Count`,names.arg = product_df1$`Product Name`)

##Marital status and Product uasage
aggregate(Cardio_DataFrame$Usage,by=list(Cardio_DataFrame$MaritalStatus),FUN=sum)->Mart_df
as.data.frame(Mart_df)->Mart_df1
c("Marital Status of User","Total Product usage")->Cname
colnames(Mart_df1)<-Cname
paste("Marital status and it's total no. of usage:")
Mart_df1
barplot(Mart_df1$`Total Product usage`,names.arg = Mart_df1$`Marital Status of User`)


###G
aggregate(Cardio_DataFrame$Usage,by=list(Cardio_DataFrame$Gender),FUN=sum)->Mart_ge
as.data.frame(Mart_ge)->Mart_ge1
colnames(Mart_ge1)<-c("Gender","Product_Count")
paste0("Gender wise Product usage count:") 
Mart_ge1
barplot(Mart_ge1$Product_Count,by=list(Mart_ge1$Gender),ylab = "Product Count",xlab = "Gender",
        main="Gender wise Product uasage")



























