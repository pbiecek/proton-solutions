install.packages("BetaBit")
library(BetaBit)
proton()
login <- employees[employees[,c("surname")]=="Insecure","login"]
proton(action <- "login", login = login)
break.in <- function(x) {
  print(x)
  proton(action = "login", login = login, password = x)
  }
sapply(top1000passwords, break.in)
pietraszkos.login <- employees[employees[,c("surname")]=="Pietraszko","login"]
hosts <- aggregate(. ~ host, data = logs[logs[,c("login")]==pietraszkos.login,], length)[,"host"]
login.as.host <- function(x) {
  print(x)
  proton(action = "server", host = x)
}
sapply(hosts, login.as.host)
