library(proton)
proton()
employees[(employees$name == "John" & employees$surname == "Insecure"),] 
proton(action = "login", login="johnins") 
sapply(top1000passwords, FUN = function(x) { proton(action = "login", login="johnins", password=x) })
employees[employees$surname=="Pietraszko",]$login 
max(table(logs[logs$login=="slap",]$host)) 
cnts <- table(logs[logs$login=="slap",]$host)
cnts[cnts == 112] 
proton(action = "server", host="194.29.178.16")
