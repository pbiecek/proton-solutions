install.packages("proton")
library(proton)
proton()
for (x in top1000passwords) {
  proton(action = "login", login = "johnins", password=x)
}
employees[employees$name == "John",]
proton(action = 'login', login='johnins')
for (x in top1000passwords) {
  proton(action = "login", login = "johnins", password=x)
}
employees[employees$surname == "Pietraszko",]
unique(logs[logs$login=="slap", "host"])
sort(table(logs[logs$login=="slap", "host"]))
proton(action = "server", host="194.29.178.16")
library(stringr)
df <- strsplit(bash_history, " ", simplify = T)
comands <- df[,1]
