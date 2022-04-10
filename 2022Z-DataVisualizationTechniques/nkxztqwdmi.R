install.packages("proton")
library(proton)
proton()
head(employees)
employees[employees$name == "John",]
proton(action = "login", login="johnins")
head(top1000passwords)
for (i in top1000passwords){
  proton(action = "login", login="johnins", password=i)
}
employees[employees$surname == "Pietraszko",]
table(logs[logs$login == "slap", c("host")]) -> tmp
counts <- data.frame(tmp)
counts[which.max(counts$Freq),]
proton(action = "server", host="194.29.178.16")
bash_history
library(stringr)
df <- stringr::str_split(bash_history, " ", simplify = TRUE)
commands <- df[,1]
for (command in unique(commands)){
  proton(action = "login", login = "slap", password = )
}
