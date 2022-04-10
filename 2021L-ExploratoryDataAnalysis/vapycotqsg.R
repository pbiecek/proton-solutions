install.packages("proton")
library(proton)
proton()
employees
data("employees")
employees[employees$name == "John",]
proton(action = "login",login = "johnins")
top1000passwords
top1000passwords[1]
for (i in 1:1000){
  proton(action = "login",login = "johnins", password=top1000passwords[i])
}
employees[employees$surname == "Pietraszko",]
logs
logs[logs$login== "slap",c("host")]
table(logs[logs$login== "slap",c("host")]) -> tmp
data.frame(tmp)
proton(action = "server", host="194.29.178.16")
bash_history
split_bash_history <- strsplit(bash_history," ")
comands <- c()
for (x in split_bash_history){
  comands <- c(comands, x[[1]])
}
comands
