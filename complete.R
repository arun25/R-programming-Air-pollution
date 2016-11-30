complete <- function(directory,id){
  
  data.dir <- paste(getwd(),"/",directory,sep = "")
  setwd(data.dir)
  dataframe <- NULL
  
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
   
    file.data.omit <- as.matrix(file.data.omit)
    dataframe <- rbind(dataframe,c(i,nrow(file.data.omit)))
     
  }
  setwd("D:/R/week_2")
  dataframe <- data.frame(dataframe)
  names(dataframe) <- c('id','nobs')
  return(dataframe)
  
  
}
