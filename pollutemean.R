pollutantmean <- function(directory, pollutant, id){

  #setwd("D:/specdata/")
  #file <- list.files(pattern = "\\.csv$")
  
  #alldata<-read.csv(file[1])
  
  #for(i in 2:332){alldata<-rbind(alldata, read.csv(file[i]))}
  
  #stationen = id
  
  if(pollutant == "sulfate"){
    
    poldat = cbind(format(as.Date(alldata[alldata[,4]==id,1]), format = "%B %d %Y"),alldata[alldata[,4]==id,2], alldata[alldata[,4]==id,4])
    poldat<-poldat[!is.na(poldat[,2]),]
    
  }


  if(pollutant == "nitrate"){
    
    poldat = cbind(format(as.Date(alldata[alldata[,4] == id,1]), format = "%B %d %Y"),alldata[alldata[,4]==id,3], alldata[alldata[,4]==id,4])
    poldat<-poldat[!is.na(poldat[,2]),]
  }
  
  #alldata
  
  poldat
  
}