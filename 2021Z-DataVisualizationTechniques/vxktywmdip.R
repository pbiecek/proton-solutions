install.packages("dplyr")
install.packages("PogromcyDanych")
install.packages("proton")
install.packages("str_")
library(dplyr)
library(PogromcyDanych)
library(proton)
proton()
data("employees")
employees %>%
  filter(name == "John", surname == "Insecure")
proton(action = "login", login = "johnins")
data("top1000passwords")
for (i in 1:1000)
{
  proton(action = "login", login = "johnins", password = top1000passwords[i])
}
employees %>% 
  filter(surname == "Pietraszko")
data("logs")
logs %>% 
  filter(login == "slap") %>%
  group_by(host) %>%
  tally()
proton(action = "server", host = "194.29.178.16")
data("bash_history")
bash_history
gsub(" .*", "", bash_history) %>% data.frame() %>% distinct()
proton(action = "login", login="slap", password="DHbb7QXppuHnaXGN")
  
