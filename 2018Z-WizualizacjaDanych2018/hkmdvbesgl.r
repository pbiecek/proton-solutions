library(dplyr)
library(proton)
login <- employees %>% filter(name == "John", surname == "Insecure") %>% select(login)
proton(action = "login", login = login)
checkPass <- function(pass) {
  return (proton(action = "login", login = login, password = pass) == 'Success! User is logged in!')
}
pass <- Filter(checkPass, top1000passwords)
proton(action = "login", login = login, password = pass)
pietraszko <- employees %>% filter(surname == 'Pietraszko') %>% select(login) %>% first()
host <- logs %>% filter(login == pietraszko) %>% group_by(host) %>%
  summarise(n = n()) %>% 
  slice(which.max(n)) %>% select(host) %>% first() %>% as.character()
proton(action = 'server', host = host )
checkPass <- function(pass) {
  return (proton(action = "login", login = pietraszko, password = pass) == 'Success! User is logged in!')
}
candidates <- bash_history[grepl('^[a-zA-Z0-9]+$', bash_history)] %>% unique()
pass <- Filter(checkPass, candidates)
