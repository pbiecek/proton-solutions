install.packages("BetaBit")
library("BetaBit")
proton()
library('dplyr')
library("stringr")
head(employees)
employees %>%
  filter(name == 'John' & surname == "Insecure" )
proton(action = "login", login="johnins")
top1000passwords
n <- length(top1000passwords)
for (i in 1:n ){
    
   proton(action = "login", login="johnins", password = top1000passwords[i])
  }
employees %>%
  filter(surname == "Pietraszko" )
head(logs)
logs %>%
  filter(login == "slap") %>%
  group_by(host) %>%
  count()
proton(action = "server", host = "194.29.178.16")
bash_history
a <- gsub(" .*$", "", bash_history)
unique(a)
proton(action = "login", login="slap", password="DHbb7QXppuHnaXGN")
