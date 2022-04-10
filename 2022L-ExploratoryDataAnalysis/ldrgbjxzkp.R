install.packages("proton")
library(proton)
proton()
data(employees)
employees[employees$name == "John" & employees$surname == "Insecure",]
proton(action = "login", login="johnins")
data(top1000passwords)
for (i in 1:1000) {
  if (proton(action = "login", login="johnins", password=top1000passwords[i]) 
      == "Success! User is logged in!" ) {
    print(i)
    break
  }
  
}
pass <- top1000passwords[i]
data(logs)
log_piet <- employees[employees$surname == 'Pietraszko', 'login']
log_max <- which.max( table(logs[logs$login == log_piet, 'host']) )
table(logs[logs$login == log_piet, 'host'])[log_max]
proton(action = "server", host="194.29.178.16")
data(bash_history)
library(stringr)
comd <- unique(word(bash_history, 1))
comd
for(pass in comd){
proton(action = "login", login=log_piet, password=pass) 
}
