install.packages("proton")
library(proton)
proton()
E <- employees
Insecure <- E[E$surname == "Insecure", ]
Insecure
proton(action = "login", login="johnins")
top1000passwords
for (i in 1:length(top1000passwords)){
  proton(action = "login", login="johnins", password=top1000passwords[i])
}
logs
PietrLogin <- E[E$surname=="Pietraszko", ]
PietrLogin
PietrLogs <- logs[logs$login == "slap", ]
s <- summary(as.factor(PietrLogs$host))
s
proton(action = "server", host="194.29.178.16")
bash_history
stri <- unique(sapply(strsplit(bash_history, " "), "[", 1))
stri
proton(action = "login", login="slap", password="DHbb7QXppuHnaXGN")
