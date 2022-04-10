install.packages("BetaBit")
library(BetaBit)
proton()
index <- which(employees$surname == "Insecure") 
login <- employees[index[1],]$login
proton(action = "login", login=login)
install.packages("rlist")
library(rlist)
x <- list.find(top1000passwords, (function(x) proton(action = "login", login=login, password=x) == proton.login.success) )
