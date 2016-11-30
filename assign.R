pollutantmean <- function(directory,pollutant,id) {
  
  data.dir <- paste(getwd(),"/",directory,sep = "")
  setwd(data.dir)
  mean.final <- 0
  total <- 0
  samples <- 0
  
  for(i in id)
  {
    if(i < 10 && i > 0) 
    {
      file.name.val <- paste("00",i,".csv",sep = "")
      
    }
    
    else if(i < 100 && i > 9 )
    {
      file.name.val <- paste("0",i,".csv",sep = "")
    }
    
    else if(i > 99 && i <1000)
    {
      file.name.val <- paste(i,".csv",sep = "") 
    }
    
      file.data.val <- read.csv(file.name.val)
      file.data.omit <- na.omit(file.data.val)
      
      samples <- samples + nrow(file.data.omit) 
      
      if(pollutant == "sulfate")
      {
        #mean.final <- mean(file.data.omit$sulfate) 
        total <- total + sum(file.data.omit$sulfate)
      }
      
      else if(pollutant == "nitrate")
      {
        #mean.final <- mean(file.data.omit$nitrate)
        total <- total + sum(file.data.omit$nitrate)
      }
      else
      {
        print("enter valid pollutant name")
      }
      #file.data.head <<- head(file.data.val)
    
  }
  
  
  setwd("D:/R/week_2")
  total/samples
}




# directory in
# id in
# pollutant in
# calc the directory for files location
# iterate through files using for loop
# 