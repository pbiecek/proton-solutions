install.packages("BetaBit")
library(BetaBit)
proton()
e <- employees
jins <- subset(e, surname == "Insecure")
proton(action = "login", login="johnins")
for(pass in top1000passwords) {
  
  proton(action = "login", login="johnins", password=pass)
}
logs
library(stringr)
library(dplyr)
logs %>%
  filter(str_detect(login, "sla"))
library(plyr)
lp <- subset(logs, login = "slap")
ips <- count(lp, host)
