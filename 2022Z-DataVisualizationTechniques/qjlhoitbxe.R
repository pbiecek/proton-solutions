install.packages("proton")
library(proton)
proton()
data("employees")
employees[employees$name == "John",]
login<- "johnins"
proton(action = "login", login=login)
for(i in 1:1000){
  password <- top1000passwords[i]
  if(proton(action = "login", login= login, password=password) == "Success! User is logged in!"){
    i
    password
  }
}
employees[employees$surname == "Pietraszko",]
logs
logs2<- logs[logs$login == "slap",]
maxim<- max(table(logs2$host))
maxim
proton(action = "server", host='194.29.178.16')
bash_history
split_bash_history <- strsplit(bash_history, " ")
for (x in split_bash_history){
  comands <- c(comands, x[[1]])
}
for (comads in unique(comads)){
  proton(action = "login", login = "slap", password = comand)
}
