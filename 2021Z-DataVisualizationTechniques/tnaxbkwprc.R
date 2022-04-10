library(proton) 
library(dplyr) 
proton()
data("employees")
employees %>%
  filter(name == "John", surname == "Insecure") 
proton(action = "login", login = "johnins")
data("top1000passwords")
for (pass in top1000passwords) {
  proton(action = "login", login = "johnins", password = pass)
} 
data("logs")
employees %>%
  filter(surname == "Pietraszko") 
logs %>%
  filter(login == "slap") %>%
  count(host) %>%
  arrange(-n) 
proton(action = "server", host="194.29.178.16")
data("bash_history")
library(stringi) 
commands <- unique(stri_extract_first_regex(bash_history, "(^.*?(?=[ ]))|(^[\\S]+$)")) 
commands
proton(action = "login", login = "slap", password = "DHbb7QXppuHnaXGN")
