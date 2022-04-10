library(proton)
proton()
employees[employees$surname == 'Insecure',]
proton(action= "login", login = "johnins")
top1000passwords
for (i in top1000passwords){
  response <- proton(action= "login", login = "johnins", password = i)
  if (response == 'Success! User is logged in!'){
    cat(i)
  }
}
logs
employees[employees$surname == 'Pietraszko',]
table(logs[logs$login == 'slap', c('host')]) -> tmp
data.frame(tmp)
proton(action = 'server', host = '194.29.178.16')
head(bash_history)
