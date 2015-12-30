### Good practice - remove everything from previous environment ### 
rm(list = ls())

### oro.dicom is package needed to read in oro.dicom files ###
install.packages("oro.dicom")
library(oro.dicom)

### set working directory to whereever files are on your local computer !! ###
setwd("/Users/jusset/Documents/Github/data science bowl/kaggle/train/1/study/")

## this will read all dicom files in sax_5! ##
data <- readDICOM( "sax_8", recursive = TRUE)

str(data$img[[1]])
  
image(data$img$"IM-4557-0030.dcm")

par(mfrow = c(3,3), mar = c(1,1,1,1))
###  
for( i in (1:9)*3){
image( data$img[[i]], col = grey(0:64/64), axes = FALSE, main = paste("image ",i),xlab = "", ylab = "")
}
  

