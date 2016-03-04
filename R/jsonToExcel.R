setwd("~/Downloads/IGI_templates/")

library(jsonlite)
library(WriteXLS)

library(random)
df <-randomNumbers(n=250,min=10000,max=90000,col=1)


json_file <- "http://uinames.com/api/?region=netherlands&amount=250"
document <- fromJSON(json_file)

#document<- cbind((seq(from = 1000, to = 2000, by = ((to - from)/length.out -1)),length.out=250)), document)
#document<- cbind(seq.int(10000,90000,length.out=250), document)
document<- cbind(df, document)

#document<- cbind(seq.int(250), document)
document<-setNames(document,c("CODE", "NAME","SURNAME", "SEX", "NATION"))

WriteXLS(document, ExcelFileName = "250randomDutchUsers2.xlsx",col.names = TRUE)

