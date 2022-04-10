library(dplyr)
library(proton)
proton()
employees %>% 
  filter(name == "John", surname == "Insecure")
proton(action = "login", login = "johnins")
correct_password <- sapply(top1000passwords, function(x) proton(action = "login", login = "johnins", password = x))
employees %>% 
  filter(surname == "Pietraszko")
logs %>% 
  filter(login == "slap") %>% 
  count(host) %>%
  arrange(n)
proton(action = "server", host="194.29.178.16")
sub(" .*", "", bash_history) %>% unique()
proton(action = "login", login = "slap", password = "DHbb7QXppuHnaXGN")
