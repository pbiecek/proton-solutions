install.packages("proton")
library(proton)
proton()
employees[employees$name == "John" & employees$surname=="Insecure", "login"]
proton(action = "login", login = "johnins")
for (pass in top1000passwords) {
  proton(action = "login", login = "johnins", password = pass)
}
employees[employees$surname=="Pietraszko", "login"]
newdata<- table(logs[logs$login == "slap","host"])
newdata
dim(newdata)
newdata[order(newdata[])]
proton(action = "server", host = "194.29.178.16")
splited <- strsplit(bash_history, " ")
for (p in splited) {
  if(length(p) == 1)
  {
    print(p)
  }
}
password <- "DHbb7QXppuHnaXGN"
proton(action = "login", login = "slap", password = "DHbb7QXppuHnaXGN")
