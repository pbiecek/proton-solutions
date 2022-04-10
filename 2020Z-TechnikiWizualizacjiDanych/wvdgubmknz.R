John_Ins_login <- employees[employees$name=="John" & employees$surname=="Insecure", 3]
proton(action = "login", login = John_Ins_login)
for (i in top1000passwords){
  proton(action = "login", login= John_Ins_login, password=i)
}
library(dplyr)
Pietr_login <- employees[employees$surname == "Pietraszko",3]
salwek <- logs[logs$login=="slap",] 
as.character(salwek[unique(salwek$host),2])
proton(action = "server", host = "194.29.178.16")
for (i in bash_history){
  proton(action = "login", login= "slap", password=i)
}
