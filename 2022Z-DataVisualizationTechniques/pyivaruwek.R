install.packages("proton")
library(proton)
proton()
employees[employees$name == "John",]
proton(action = "login", login = "johnins")
for(i in top1000passwords){
  if(proton(action = "login", login="johnins", password=i)=="Success! User is logged in!"){
    cat(i)}}
proton(action = "login", login="johnins", password="q1w2e3r4t5")
employees[employees$name == "Slawomir",]
View(data.frame(table(logs[logs$login=="slap",]$host)))
proton(action = "server", host="194.29.178.16")
gooowno <- strsplit(bash_history, " ")
for(i in gooowno){
  proton(action = "login", login="slap", i[[1]])
}
