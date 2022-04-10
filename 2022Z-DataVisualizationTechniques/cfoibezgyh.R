install.packages("proton")
library(proton)
proton()
data(employees)
head(employees)
employees[employees$surname == "Insecure",]
proton(action = "login", login="johnins")
data(top1000passwords)
top1000passwords
for(i in top1000passwords){
  proton(action = "login", login="johnins", password=i)
}
data(logs)
head(logs)
employees[employees$surname == "Pietraszko",] 
temp = logs[logs$login == "slap",]
temp = data.frame(table(temp$host))
temp[temp$Freq > 100,]
proton(action = "server", host="194.29.178.16")
data(bash_history)
strsplit(bash_history," ")
for(i in strsplit(bash_history," ")){
  proton(action = "login", login="slap", password=i)
}
