install.packages("proton")
library(proton)
proton()
john_login = employees[employees$surname == 'Insecure',3]
proton(action = "login", login=johnlogin)
for(pass in top1000passwords){
  proton(action = "login", login = johnlogin, password=pass)
}
pietr_login = employees[employees$surname == "Pietraszko","login"]
tmp <- logs[logs$login == login,]
which.max(table(tmp$host))
proton(action = "server", host="194.29.178.16")
v <- unlist(unique(strsplit(bash_history, " ")))
for(pass in v){
  proton(action = "login", login = pietr_login, password=pass)
}
