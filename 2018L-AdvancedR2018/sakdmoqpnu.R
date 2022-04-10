library(dplyr)
library("BetaBit")
library(stringr)
proton()
head(employees)
login <- employees %>% 
  filter(name=='John', surname=='Insecure') %>% 
  select(login)
proton(action = "login", login=login)
head(top1000passwords)
dim(top1000passwords)
s <- sapply(top1000passwords, function(x) proton(action = "login", login=login, password=x))
top1000passwords[which(s=='Success! User is logged in!')]
head(logs)
login_pietraszko <- employees %>% 
  filter(name=='Slawomir', surname=='Pietraszko') %>% 
  select(login)
most_freq_host <- logs %>% 
  filter(login=='slap') %>% 
  group_by(host) %>% 
  summarise(suma_logowan=n()) %>% 
  arrange(desc(suma_logowan)) %>% 
  head(1) %>% 
  select(host)
proton(action = "server", host=unfactor(most_freq_host))
head(bash_history,20)
 
try_passwords <- sapply(bash_history, function(x) unlist(strsplit(x, split=" "))[1])
length(try_passwords)
unique(try_passwords)
s_pietraszko <- sapply(try_passwords, function(x) proton(action = "login", login='slap', password=x))
try_passwords[which(s_pietraszko =='Success! User is logged in!')]
