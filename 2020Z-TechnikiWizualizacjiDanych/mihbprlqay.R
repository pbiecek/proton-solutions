install.packages("BetaBit")
library(BetaBit)
proton()
emp <- employees
emp[emp$surname== "Insecure",]
proton(action="login", login="johnins")
toppass <- top1000passwords
for (i in toppass){
  if (proton(action="login", login="johnins", password=i)=="Success! User is logged in!") print(i)
  
}
logs <- logs
emp[emp$surname== "Pietraszko",]  
logs2 <- logs[logs$login=="slap",]
unique(logs2$host)
proton(action = "server", host="194.29.178.16")
bh <- bash_history
for (p in bh){
  if (proton(action="login", login="slap", password=p)=="Success! User is logged in!") print(p)
  
}
