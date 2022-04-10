install.packages("proton")
library("proton")
proton()
emp <- employees
log <- emp[emp$surname=="Insecure", 'login']
proton(action = "login", login = login)
for (pass in top1000passwords){
  proton(action = "login", login=log, password = pass) 
}
  
pietLog = emp[emp$surname == "Pietraszko", "login"]
goodHost <- names(tail(sort(table(logs[logs$login == pietLog, "host"])), 1))
proton(action = "server", host=goodHost)
bash <- bash_history
maybe = c()
for (com in bash_history){
  maybe = c(maybe, strsplit(com, split = " ")[[1]])
}
maybe
 
 
