install.packages("proton")
library(proton)
proton()
head(employees)
dim(employees)
employees[employees$name == "John",]
proton(action = "login", login="johnins")
for (i in 1:length(top1000passwords)) {
  proton(action = "login", login="johnins", password=top1000passwords[[i]])
}
employees[employees$surname== "Pietraszko",]
x <- table(logs[logs$login == "slap", "host"])
df <- data.frame(x)
proton(action = "server", host="194.29.178.16")
for (i in 1:length(bash_history)) {
  tmp <- strsplit(bash_history[[i]], " ")
  if (length(tmp[[1]]) == 1) {
    print(tmp)
  }
}
proton(action = "login", login="slap", password="DHbb7QXppuHnaXGN")
