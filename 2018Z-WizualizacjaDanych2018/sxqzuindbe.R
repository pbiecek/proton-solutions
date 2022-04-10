install.packages("dplyr")
install.packages("tidyverse")
install.packages("BetaBit")
install.packages("stringr")
library(dplyr)
library(tidyverse)
library(BetaBit)
library(stringr)
proton()
johnLogin<-employees %>% 
  filter(name == "John" & surname == "Insecure" ) %>% 
  pull(login)
proton(action = "login", login=johnLogin)
for(i in top1000passwords)
{
  proton(action = "login", login=johnLogin, password=i)
}
pietraszkoLogin<-employees %>% 
  filter(surname == "Pietraszko" ) %>% 
  pull(login)
mostOftenLoggeOn<-logs %>% 
  filter(login==pietraszkoLogin) %>% 
  count(host) %>% 
  slice(which.max(n)) %>% 
  pull(host) %>% 
  as.character()
proton(action = "server", host=mostOftenLoggeOn)
for(i in bash_history)
{
  proton(action = "login", login=pietraszkoLogin, password=word(i,1))
}
