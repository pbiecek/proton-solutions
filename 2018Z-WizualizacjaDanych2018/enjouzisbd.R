install.packages("BetaBit")
library(BetaBit)
library(stringi)
BetaBit::proton()
hint=TRUE
employ<-BetaBit::employees
library(dplyr)
employ%>%filter(name == 'John')
BetaBit::proton(action = "login", login="johnins")
password <- BetaBit::top1000passwords
password[1]
for(i in password){
  print(i)
  proton(action = "login", login="johnins", password="q1w2e3r4t5")
}
logi<- logs
employ%>%filter(surname == 'Pietraszko')
logi%>%filter(login=='slap')%>%group_by(host)%>%summarise(n=length(host))
proton(action = "server", host="194.29.178.16")
hist <- bash_history
unique(stri_split(hist,fixed =' ', simplify = TRUE  )[,1])
proton(action = "login", login="slap", password="DHbb7QXppuHnaXGN")
