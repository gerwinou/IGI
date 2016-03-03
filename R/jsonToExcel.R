setwd("~/Downloads/IGI_templates/")

library(jsonlite)

json_file <- "http://uinames.com/api/?region=netherlands&amount=250"
document <- fromJSON(json_file)
document<-setNames(document,c("NAME","SURNAME", "SEX", "NATION"))

