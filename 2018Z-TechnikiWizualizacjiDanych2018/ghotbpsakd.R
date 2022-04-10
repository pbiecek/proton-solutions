install.packages("BetaBit")
library(BetaBit)
log <- employees[employees$name == "John" & employees$surname == "Insecure", 3][[1]]
proton(action = "login", login = log)
i <- 1
t <- proton(action = "login", login = log, password = top1000passwords[1])
while(proton(action = "login", login = log, password = top1000passwords[i])== t){
  i <- i+1
}
passwd <- top1000passwords[i]
logs2 <- logs[logs$login ==log,]
lll <- split.data.frame(logs2, f = factor(logs2$host))
h <- lapply(X = lll, FUN = ) 
proton(action="server", host=h)
