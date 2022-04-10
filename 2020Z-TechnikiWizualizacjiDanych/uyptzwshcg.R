install.packages("BetaBit")
library(BetaBit)
proton()
employees
employees[employees[,2] == "johnins",]
employees[employees[,2] == "Pietraszko",]
proton(action = "login", login = "johnins", password = top1000passwords[which])
proton(action = "login", login = "Pietraszko", password = top1000passwords[which])
top1000passwords
which <- (1:1000)
for (pass in which)
  proton(action = "login", login = "johnins", password = top1000passwords[pass])
logs
sort(table(logs[(logs[,1] == "slap"),][,2]), decreasing = TRUE)
proton(action = "server", host = "194.29.178.16")
bash_history
library(stringr)
amazing <- word(bash_history, 1)
amazing
which <- (1:19913)
for (pass in (1:19913))
  proton(action = "login", login = "slap", password = amazing[pass])
