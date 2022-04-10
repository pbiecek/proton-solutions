library(proton)
library(dplyr)
library(stringr)
proton()
employees %>% filter(name == "John", surname == "Insecure") %>% select(login)
proton(action ="login", login ="johnins")
for (pass in top1000passwords) {
  proton(action = "login", login="johnins", password=pass)
}
employees %>% filter(surname == "Pietraszko")
logs %>% filter(login == "slap") %>% count(host) 
proton(action = "server", host="194.29.178.16")
bash_history[!str_detect(bash_history, " ")] %>% data.frame() %>% distinct()
proton(action = "login", login="slap", password = "DHbb7QXppuHnaXGN")
