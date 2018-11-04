###Function Defination to get unique value 

##No of Product present in data set and it's name
#paste0("No of Product present in data set CardioGoodFitness is:")
#length(unique(Cardio_DataFrame$Product))
#paste0("Product name which present in CardioGoodFitness data det")
#unique(Cardio_DataFrame$Product)



Uniq_Find<-function(Variable_name)
{
  paste0("Total No ofin data set CardioGoodFitness is:")
  length(unique(Variable_name))
  paste0("Value name which present in CardioGoodFitness data det")
  unique(Variable_name)
  
}

