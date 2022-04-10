install.packages("proton")
library(proton)
proton()
employees[employees$surname=="Insecure",]
proton(action = "login", login="johnins")
top1000passwords
for (i in 1:1000){
  proton(action = "login", login="johnins", password=top1000passwords[i])
}
head(logs)
employees[employees$surname=="Pietraszko",]
head(logs)
table(logs[logs$login=="slap",c("host")]) ->tmp
data.frame(tmp)
proton(action = "server", host="194.29.178.16")
