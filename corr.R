corr <- function(directory, threshold=0){
  
  setwd(directory)
  
  file <- data.frame(list.files(pattern = "\\.csv$"))
  dateien<-as.character(file[,1])
  
  alldata<-read.csv(dateien[1])
  gute<-alldata[!is.na(alldata[,2]) & !is.na(alldata[,3]),]
  
  ergebnis<-data.frame()
  
  if (dim(gute)[1]> threshold){
    
    ergebnis <- cor(gute[,2], gute[,3])
  }
  
  #ergebnis<-data.frame(gute)
  
  if(length(dateien)>1){
  
      for(i in 2:length(dateien)){
        alldata<-read.csv(dateien[i])
        gute<-alldata[!is.na(alldata[,2]) & !is.na(alldata[,3]),] 
        
        if (dim(gute)[1]> threshold){
          
          ergebnis<-rbind(ergebnis,cor(gute[,2], gute[,3]))
        }
        
        
      }
  }

  #ergebnis<-cbind(id, ergebnis)
  #gute
  ergebnis
 
}