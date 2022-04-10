install.packages("proton")
library(proton)
proton()
head(employees)
employees[employees$name == "John" & employees$surname == "Insecure", ]
proton(action = "login", login="johnins")
head(top1000passwords)
for (pwd in top1000passwords) {
  proton(action = "login", login = "johnins", password = pwd)
}
  
head(logs)
employees[employees$surname == "Pietraszko", "login"]
l <- logs[logs$login == "slap",]
l <- as.data.frame(table(l$host))
l[l$Freq == max(l$Freq),]
proton(action = "server", host="194.29.178.16")
head(bash_history)
library(stringr)
df <- stringr::str_split(bash_history, " ", simplify = T)
comands <- df[,1]
for (command in unique(comands))
  proton(action = "login", login = "slap", password = command)
  
