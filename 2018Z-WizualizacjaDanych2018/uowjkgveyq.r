library(BetaBit)
proton()
library(dplyr)
library(stringr)
loginJohnInsecure = employees %>% filter(employees$surname == "Insecure" & employees$name=="John") %>% select(login)
proton(action ="login", login=loginJohnInsecure)
for (hasloProblem2 in top1000passwords)
{  
  if (proton(action = "login", login=loginJohnInsecure, password=hasloProblem2) == "Success! User is logged in!")
    break()
}
hasloProblem2
loginPietraszko = subset(employees, employees$surname == "Pietraszko", select=login)
serwer = logs %>% filter(logs$login == "slap") %>% group_by(host) %>% summarise(wywolania = length(host)) %>% arrange(desc(wywolania))  %>% head(1) %>% select(host)
proton(action = "server", host="194.29.178.16")
word(bash_history, 1) %>% unique()
proton(action = "login", login="slap", password="DHbb7QXppuHnaXGN")
