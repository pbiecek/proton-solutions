install.packages("BetaBit")
install.packages("dplyr")
library(dplyr)
library(BetaBit)
proton()
login = employees %>% 
  filter(name == "John" & surname == "Insecure") %>% 
  select(login)
proton(action = "login", login=login)
i = 1
a = ""
while(a != "Success! User is logged in!" & i <= 1000) {
  a = proton(action = "login", login=login, password=top1000passwords[i])
  i = i+1
}
a = proton(action = "login", login=login, password=top1000passwords[i-1])
pietraszko = employees %>% 
  filter(surname == "Pietraszko") %>% 
  select(login)
pietraszko = as.character(pietraszko)
host = logs %>%
  filter(login == pietraszko) %>%  
  group_by(host) %>% 
  summarise(n =length(host)) %>% 
  summarise(maxHost = host[which.max(n)]) %>% 
  first()
proton(action = "server", host=as.character(host))
library(stringr)
w = unique(word(bash_history))
i = 1
b= ""
while(b != "Success! User is logged in!" & i <= length(w)) {
  b = proton(action = "login", login=pietraszko, password=w[i])
  print(w[i])
  i = i+1
}
proton(action = "login", login=pietraszko, password=w[i-1])
