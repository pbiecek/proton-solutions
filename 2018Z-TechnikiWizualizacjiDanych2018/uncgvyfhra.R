install.packages("BetaBit")
library(BetaBit)
proton()
head(employees)
employees[employees['name']=='John']
proton(action= "login", login="johnins")
top1000passwords
haslo <- function(i) {
  proton(action = "login", login="johnins", password=top1000passwords[i])
}
lapply(1:1000, haslo) 
head(logs)
table(logs, logs["host"])
sort(table(logs['host']), TRUE)[1]
proton(action = "server", host="194.29.178.91")
matrix(logs[logs['login']=="johnins"], ncol=3)
