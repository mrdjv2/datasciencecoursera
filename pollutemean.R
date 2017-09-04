pollutantmean <- function(pollutant, id){

  setwd("D:/specdata/")
  
  file <- data.frame(list.files(pattern = "\\.csv$"))

  
  alldata<-read.csv(as.character(file[id,]))
  
  #for(i in id){alldata<-rbind(alldata, read.csv(file[i]))}
  
  #if(pollutant == "sulfate"){
    
  #  poldat = cbind(format(as.Date(alldata[,1]), format = "%B %d %Y"),alldata[,2], alldata[,4])
  #  poldat<-poldat[!is.na(poldat[,2]),]
    
  #}


  #if(pollutant == "nitrate"){
    
  #  poldat = cbind(format(as.Date(alldata[,1]), format = "%B %d %Y"),alldata[,3], alldata[,4])
  #  poldat<-poldat[!is.na(poldat[,2]),]
  #}
  
  #mean(as.numeric(poldat[,2]))
  file
}