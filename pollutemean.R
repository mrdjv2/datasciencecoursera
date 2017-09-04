pollutantmean <- function(directory, pollutant, id){
  
  setwd(directory)
  
  file <- data.frame(list.files(pattern = "\\.csv$"))
  dateien<-as.character(file[id,])
  
  alldata<-read.csv(dateien[1])
  
  if(length(dateien)>1){
  
      for(i in 2:length(dateien)){
        
        alldata<-rbind(alldata,read.csv(dateien[i]))
      }
  }
  
  if(pollutant == "sulfate"){
  
    poldat = cbind(format(as.Date(alldata[,1]), format = "%B %d %Y"),alldata[,2], alldata[,4])
    poldat<-poldat[!is.na(poldat[,2]),]
  
  }
  
  
  if(pollutant == "nitrate"){
  
    poldat = cbind(format(as.Date(alldata[,1]), format = "%B %d %Y"),alldata[,3], alldata[,4])
    poldat<-poldat[!is.na(poldat[,2]),]
  }
  
  mean(as.numeric(poldat[,2]))
  #alldata
}