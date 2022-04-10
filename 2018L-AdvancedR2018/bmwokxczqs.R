install.packages("BetaBit")
library("BetaBit")
proton()
john.login <- employees$login[employees$name=="John" & employees$surname=="Insecure"]
proton(action = "login", login = john.login)
top1000passwords
for (i in 1:length(top1000passwords)) {
z <- proton(action = "login", login = john.login, password = top1000passwords[i] )
if (z=="Success! User is logged in!") { password <- top1000passwords[i]
                                           break  } }
password
proton(action = "login", login = john.login, password = password )
View(logs)
pietraszko.login <- employees$login[employees$name=="Slawomir" & employees$surname=="Pietraszko"]
log.slap <- logs[logs$login==pietraszko.login,]
View(log.slap)
most.logs <- as.data.frame(table(log.slap$host))
host.IP <- most.logs$Var1[which.max(most.logs$Freq)]
proton(action = "server", host=as.character(host.IP) )
bash_history
proton(action = "login", login = pietraszko.login, password = "pwd" )
bash_extracted <- gsub( " .*$", "",bash_history) 
commands <- table(bash_extracted)
proton(action = "login", login = pietraszko.login, password = "DHbb7QXppuHnaXGN" )
