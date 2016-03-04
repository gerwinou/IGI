setwd("~/Downloads/IGI_templates/")

library(jsonlite)
library(WriteXLS)
library(random)

empids <-randomNumbers(n=90,min=10000,max=90000,col=1)
empids<-setNames(empids,c("CODE"))
orgs <- randomNumbers(n=90,min=1,max=10,col=1)
orgs <- setNames(orgs,c("OU"))
json_file1 <- "http://uinames.com/api/?region=netherlands&amount=10"
json_file2 <- "http://uinames.com/api/?region=france&amount=10"
json_file3 <- "http://uinames.com/api/?region=germany&amount=10"
json_file4 <- "http://uinames.com/api/?region=belgium&amount=10"
json_file5 <- "http://uinames.com/api/?region=england&amount=10"
json_file6 <- "http://uinames.com/api/?region=india&amount=10"
json_file7 <- "http://uinames.com/api/?region=italy&amount=10"
json_file8 <- "http://uinames.com/api/?region=russia&amount=10"
json_file9 <- "http://uinames.com/api/?region=united%20states&amount=10"
json_file10 <- "http://uinames.com/api/?region=denmark&amount=10"

d1 <- fromJSON(json_file1)
d2 <- fromJSON(json_file2)
d3 <- fromJSON(json_file3)
d4 <- fromJSON(json_file4)
d5 <- fromJSON(json_file5)
d6 <- fromJSON(json_file6)
d7 <- fromJSON(json_file7)
d8 <- fromJSON(json_file8)
d9 <- fromJSON(json_file9)
d10 <- fromJSON(json_file10)

document<- rbind.data.frame(d1,d2,d3,d4,d5,d6,d7,d8,d9)
document<- cbind(empids, document,orgs)
document<-setNames(document,c("CODE", "NAME","SURNAME", "SEX", "COUNTRY", "OU"))[,c("CODE","NAME","SURNAME","SEX","OU","COUNTRY")]
WriteXLS(document, ExcelFileName = "90randomUsers.xlsx",col.names = TRUE)

