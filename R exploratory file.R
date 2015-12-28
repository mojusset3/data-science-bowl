

install.packages("oro.dicom")
library(oro.dicom)


getwd()


setwd("/Users/jusset/Documents/Github/data science bowl/kaggle/train/1/study/sax_5/")

data <- readDICOM("IM-4557-0030.dcm")

str(data)

a = 1 
