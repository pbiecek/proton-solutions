library(proton)
library(dplyr)
library(stringr)
proton()
employees %>% filter(name == "John", surname == "Insecure")
proton(action = "login", login = "johnins")
for (liczba in 1:1000) {
  proton(action = "login",
         login = "johnins",
         password = top1000passwords[liczba])
  
}
employees %>% filter(surname == "Pietraszko")
logs %>% filter(login == "slap") %>%  group_by(host) %>% count() %>% arrange(-n)
proton(action = "server", host = "194.29.178.16")
sub(" .*", "", bash_history) %>% data_frame()  %>%
  rename(name = ".") %>% group_by(name) %>%
  count() %>% arrange(n)
proton(action = "login",
       login = "slap",
       password = "DHbb7QXppuHnaXGN")
