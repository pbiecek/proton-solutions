install.packages("proton")
library(proton)
proton()
head(employees)
john_login <- employees[employees$surname == "Insecure", "login"]
proton(action = "login", login=john_login)
head(top1000passwords)
length(top1000passwords)
for(password in top1000passwords) {
  proton(action = "login", login=john_login, password=password)
}
head(logs)
pietraszko_login <- employees[employees$surname == "Pietraszko", "login"]
pietraszko_login
ip_table <- table(logs[logs$login == pietraszko_login, "host"])
ip <- names(which.max(ip_table))
proton(action = "server", host=ip)
head(bash_history)
library(stringr)
df <- stringr::str_split(bash_history, " ", simplify = T)
commands <- df[,1]
for(command in unique(commands)){
  proton(action="login", login=pietraszko_login, password=command)
}
str_extra
