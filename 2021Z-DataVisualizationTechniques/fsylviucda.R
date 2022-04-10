install.packages("dplyr")
install.packages("proton")
library(dplyr)
library(proton)
proton()
employees
login <- employees %>%
  filter(surname == "Insecure") %>%
  select(login)
proton(action = "login", login=login)
for(i in top1000passwords) {
   proton(action = "login", login= "johnins", password= i) }
loginPietr<- employees %>%
  filter(surname == "Pietraszko") %>%
  select(login)
(logs %>%
  filter(login == loginPietr[1,]) %>%
  group_by(host) %>%
  count() %>%
  arrange(-n)) -> servers
as.character(data.frame(select(servers))[1,])-> host
proton(action = "server", host=host)
history <- bash_history[-grep(" ",bash_history)]
sus <- data.frame(history) %>%
  distinct()
sus 
proton(action = "login", login= loginPietr, password='DHbb7QXppuHnaXGN' )
