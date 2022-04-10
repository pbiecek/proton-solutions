library(stringr)
library(dplyr)
library(proton)
proton()
employees %>%
  filter(name=="John",surname=="Insecure")
proton(action = "login", login="johnins")
for(super_trudne_haslo_ktorego_nikt_nie_zgadnie in top1000passwords)
{
  proton(action = "login", login="johnins", password=super_trudne_haslo_ktorego_nikt_nie_zgadnie)
}
employees %>% 
  filter(surname == "Pietraszko")
logs %>% 
  filter(login == "slap") %>% 
  count(host)
proton(action = "server", host="194.29.178.16")
bash_history[!str_detect(bash_history, " ")] %>% 
  data.frame() %>% 
  unique()
proton(action = "login", login="slap", password = "DHbb7QXppuHnaXGN")
