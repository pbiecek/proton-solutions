install.packages("BetaBit")
library(BetaBit)
proton()
library(dplyr)
filtered.rows <- employees %>% 
  filter(name == 'John', surname == 'Insecure')
johnlogin <- filtered.rows %>% 
  top_n(1, login) %>% 
  select(login) %>% 
  as.character()
proton(action = 'login', login = johnlogin)
for (pass in top1000passwords) {
  res <- proton(action = 'login', login = johnlogin, password = pass)
  if (!grepl('.*incorrect.*', res)) {
    break
  }
}
pietraszko.login <- employees %>% 
  filter(name == 'Slawomir', surname == 'Pietraszko') %>% 
  top_n(1, login) %>% 
  select(login) %>% 
  as.character()
often.visited.host <- logs %>% 
  filter(login == pietraszko.login) %>% 
  group_by(host) %>% 
  summarise(count = length(host)) %>% 
  filter(count == max(count)) %>% 
  top_n(1, count)
proton(action = 'server', host = as.character(often.visited.host[['host']]))
tmp <- bash_history[!grepl('^[a-z]+ .*', bash_history)] %>% 
  as.factor()
print(levels(tmp)) 
probably.password <- levels(tmp)[1]
proton(action = 'login', login = pietraszko.login, password = probably.password)
