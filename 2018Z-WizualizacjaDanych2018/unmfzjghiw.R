library(BetaBit)
library(dplyr)
library(stringi)
proton()
login = employees %>% filter(name=='John', surname=='Insecure') %>% select(login)
login = login[[1]]
proton(action = "login", login=login)
for (pass in top1000passwords) {
  if (grepl('incorrect', proton(action="login", login=login, password=pass))){
    pwd = pass
  }
}
pietraszko_login = employees %>% filter(surname=="Pietraszko") %>% select(login)
pietraszko_login = pietraszko_login[[1]]
logs %>% 
  filter(login==pietraszko_login) %>% 
  group_by(host) %>% 
  summarize(count = length(host)) %>% 
  arrange(count)
proton(action = "server", host="194.29.178.16")
stri_split_fixed(bash_history, ' ', simplify=TRUE)[,1] %>% unique()
proton(action="login", login=pietraszko_login, password="DHbb7QXppuHnaXGN")
