setwd("~/Downloads/IGI_templates/")

library(jsonlite)
library(WriteXLS)
library(random)

#empids <-randomNumbers(n=4000,min=10000,max=90000,col=1)
#empids<-setNames(empids,c("CODE"))
empids <- seq.int(20000)
#orgs <- randomNumbers(n=4000,min=1,max=10,col=1)
#orgs <- setNames(orgs,c("OU"))
json_file1 <- "http://uinames.com/api/?region=netherlands&amount=500"
json_file2 <- "http://uinames.com/api/?region=france&amount=500"
json_file3 <- "http://uinames.com/api/?region=germany&amount=500"
json_file4 <- "http://uinames.com/api/?region=belgium&amount=500"
json_file5 <- "http://uinames.com/api/?region=england&amount=500"
json_file6 <- "http://uinames.com/api/?region=india&amount=500"
json_file7 <- "http://uinames.com/api/?region=italy&amount=500"
json_file8 <- "http://uinames.com/api/?region=belgium&amount=500"
json_file9 <- "http://uinames.com/api/?region=united%20states&amount=500"
json_file10 <- "http://uinames.com/api/?region=denmark&amount=500"

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
d11 <- fromJSON(json_file1)
d12 <- fromJSON(json_file2)
d13 <- fromJSON(json_file3)
d14 <- fromJSON(json_file4)
d15 <- fromJSON(json_file5)
d16 <- fromJSON(json_file6)
d17 <- fromJSON(json_file7)
d18 <- fromJSON(json_file8)
d19 <- fromJSON(json_file9)
d20 <- fromJSON(json_file10)
d21 <- fromJSON(json_file1)
d22 <- fromJSON(json_file2)
d23 <- fromJSON(json_file3)
d24 <- fromJSON(json_file4)
d25 <- fromJSON(json_file5)
d26 <- fromJSON(json_file6)
d27 <- fromJSON(json_file7)
d28 <- fromJSON(json_file8)
d29 <- fromJSON(json_file9)
d30 <- fromJSON(json_file10)
d31 <- fromJSON(json_file1)
d32 <- fromJSON(json_file2)
d33 <- fromJSON(json_file3)
d34 <- fromJSON(json_file4)
d35 <- fromJSON(json_file5)
d36 <- fromJSON(json_file6)
d37 <- fromJSON(json_file7)
d38 <- fromJSON(json_file8)
d39 <- fromJSON(json_file9)
d40 <- fromJSON(json_file10)






document<- rbind.data.frame(d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,d12,d13,d14,d15,d16,d17,d18,d19,d20,d21,d22,d23,d24,d25,d26,d27,d28,d29,d30,d31,d32,d33,d34,d35,d36,d37,d38,d39,d40)
document<- cbind(empids, document)
document<-setNames(document,c("CODE", "NAME","SURNAME", "SEX", "COUNTRY"))[,c("CODE","NAME","SURNAME","CODE","COUNTRY")]
document<-document[1:4]
#WriteXLS(document, ExcelFileName = "90randomUsers.xlsx",col.names = TRUE)
write.csv(document, file = "MSec2.csv",col.names = FALSE,row.names= FALSE, sep = ";")