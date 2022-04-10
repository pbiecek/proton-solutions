install.packages("proton")
library(proton)
proton()
employees[employees$surname == 'Insecure','login']
proton(action = "login", login="johnins")
top1000passwords
for (pwd in top1000passwords)
{proton(action = "login", login="johnins", password=pwd)}
employees[employees$surname == 'Pietraszko','login']
which.max(table(logs[logs$login=="slap", 'host']))
proton(action = "server", host="194.29.178.16")
bash_history
library(stringr)
df <- stringr::str_split(bash_history, " ", simplify = TRUE)
comands <- df[,1]
for (comand in unique(comands)){
  proton(action = "login", login = "slap", password = comand)
}
