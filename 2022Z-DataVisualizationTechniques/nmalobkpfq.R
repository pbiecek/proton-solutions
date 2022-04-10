install.packages("proton")
library(proton)
proton()
summary(employees)
employees[employees$name == "John" & employees$surname == "Insecure", ]
proton(action = "login", login = "johnins")
proton(action = "login", login="johnins", password="ABC")
for(i in 1:length(top1000passwords)) {
  proton(action = "login", login="johnins", password=top1000passwords[i])
}
summary(logs)
d <- table(logs[logs$login == "slap", ]$host)
max(d)
d[d == 112]
employees[employees$surname == "Pietraszko", ]
proton(action = "server", host="194.29.178.16")
summary(bash_history)
head(bash_history)
d <- strsplit(bash_history, " ")
s <- sapply(d, length)
unique(d[s == 1])
proton(action = "login", login="slap", password="DHbb7QXppuHnaXGN")
