install.packages("dplyr")
install.packages("PogromcyDanych")
library(dplyr)
library(PogromcyDanych)
library(tidyr)
library(proton)
proton()
help<-employees%>%
  filter(employees$name=="John" & employees$surname=="Insecure")
logins<-help$login
proton(action = "login", login=help$login)
for(k in 1:1000){
  proton(action = "login", login=help$login, password=top1000passwords[k])== "`Success! User is logged in!`"
}
logs
logins
help<-employees%>%
  filter(employees$surname=="Pietraszko")
loginss<-help$login
loginss
help<- logs %>%
  filter(login==loginss)%>%
  count(host)%>%
  arrange(n)%>%
  tail(1) %>%
  pull(var=1)
help
droplevels(help)
proton(action="server", host="194.29.178.16")
?table
?strsplit
table(unlist(strsplit(bash_history," ")))
proton(action = "login", login = "slap", password = "DHbb7QXppuHnaXGN")
  
