install.packages("proton")
library(proton)
proton()
employees[employees[c("name", "surname")] == c("John", "Insecure"),3]
login <- "johnins"
proton(action = "login", login="johnins")
head(top1000passwords)
for(password in top1000passwords){
proton(action = "login", login=login, password=password)}
employees[employees$surname == "Pietraszko",]
login<-"slap"
logi<-logs[logs$login == login,]
hoscik<-which.max(table(logi$host))
proton(action = "server", host=names(hoscik))
