library(proton)
library(dplyr)
library(tidyr)
proton()
data("employees")
employees %>% filter(name == "John", surname== "Insecure")
proton(action = "login", login= "johnins")
data("top1000passwords")
x <- seq(1,1000)
for(val in x){
  proton(action = "login", login= "johnins", password = top1000passwords[val])
}
data("logs")
employees %>% filter(surname=="Pietraszko")
logs %>% filter(login=="slap") %>% count(host) %>% arrange(-n)
proton(action = "server", host="194.29.178.16")
data("bash_history")
as.data.frame(bash_history) %>% 
  separate(bash_history, " ", into = c("commands","files")) %>% 
  group_by(commands) %>% summarize()
proton(action = "login", login= "slap", password = "DHbb7QXppuHnaXGN")
