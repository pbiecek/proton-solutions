install.packages("proton")
library(proton)
proton()
employees[employees$name == "John",]
proton(action = "login", login="johnins")
head(top1000passwords)
for(i in top1000passwords){
  proton(action = "login", login="johnins", password=i)
}
proton(action = "server", host="XYZ")
head(logs)
employees[employees$surname == "Pietraszko",]
name = "Slawomir"
login = "slap"
Slap_logs  <-  (logs[logs$login == "slap",])
table(Slap_logs$host) 
sort(table(Slap_logs$host))
proton(action = "server", host="194.29.178.16")
bash_history
split_bash <- strsplit(bash_history, " ")
for(x in split_bash){
  comads <-  c(comads, x[[1]])
}
for(comads in unique(comads)){
  proton(action = "login", login = " slap", password = comads)
}
