install.packages("BetaBit")
install.packages("data.table")
library(data.table)
library(BetaBit)
proton()
employees[employees$name == 'John',]
proton(action = "login", login="johnins")
for (password in top1000passwords) {
  print(password)
  proton(action = "login", login = "johnins", password = password)
}
employees[employees$surname == 'Pietraszko',]
setDT(logs[logs$login == "slap",])[, .(`Number of rows` = .N), by = host]
proton(action = "server", host = "194.29.178.16")
unique(unlist(strsplit(bash_history, " ")))
proton(action = "login", login = "slap", password = "DHbb7QXppuHnaXGN")
