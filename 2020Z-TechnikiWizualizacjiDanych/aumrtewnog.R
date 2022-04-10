library(BetaBit)
library(dplyr)
proton()
etykiety <- names(employees)
wiersz <- employees[employees$name == "John" & employees$surname == "Insecure",]
login <- wiersz$login
typeof(top1000passwords)
passwords <- as.array(top1000passwords)
for (i in 1:1000){
  proton(action = "login", login="johnins", password = passwords[i])
}
head(logs)
data_frame <- logs
wiersz1 <- employees[employees$surname == "Pietraszko",]
login <- wiersz1$login
names(logs)
dane <- logs[logs$login == login, ]
dane %>% group_by(dane$host)  %>%
  summarise(count=n()) 
proton(action = "server", host="194.29.178.16")
