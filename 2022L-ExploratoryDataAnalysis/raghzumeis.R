install.packages("proton")
library(proton)
proton()
?proton
proton(hint=TRUE)
employees[employees$surname=='Insecure' & employees$name=="John",'login']
proton(action = "login", login="johnins")
top1000passwords
for (k in 1:length(top1000passwords)) {
  response <- proton(action = "login", login="johnins", password=top1000passwords[k])
  if(response=='Success! User is logged in!'){
    print(top1000passwords[k])
    break
  }
  }
log_piet <- employees[employees$surname== 'Pietraszko', "login"]
head(logs)
which.max(table(logs[logs$login== log_piet,'host']))
table(logs[logs$login== log_piet,'host'])[134]
proton(action= 'server', host="194.29.178.16 
          112 ")
?filter
