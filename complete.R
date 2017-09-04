complete <- function(directory, id){
  
  setwd(directory)
  
  file <- data.frame(list.files(pattern = "\\.csv$"))
  dateien<-as.character(file[id,])
  
  alldata<-read.csv(dateien[1])
  gute<-alldata[!is.na(alldata[,2]) & !is.na(alldata[,3]),]
  gute<-dim(gute)[1]
  ergebnis<-data.frame(gute)
  
  if(length(dateien)>1){
  
      for(i in 2:length(dateien)){
        alldata<-read.csv(dateien[i])
        gute<-alldata[!is.na(alldata[,2]) & !is.na(alldata[,3]),] 
        gute<-dim(gute)[1]
                 
        ergebnis<-rbind(ergebnis,data.frame(gute))
      }
  }

  ergebnis<-cbind(id, ergebnis)
  #gute
  
 
}