install.packages("proton")
library(proton)
proton()
employees[employees$name == "John" & employees$surname == "Insecure",]
proton(action = "login", login="johnins")
top1000passwords
for (password in top1000passwords)
  proton(action = "login", login="johnins", password=password)
correctpasswd=password
head(logs)
login = employees[employees$surname == "Pietraszko","login"]
foundhost = tail(sort(table(logs[logs$login == login,"host"])),1)
foundhost
proton(action = "server", host="194.29.178.16")
head(bash_history)
library(stringr)
strsplit(bash_history," ")
