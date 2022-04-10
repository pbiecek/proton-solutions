install.packages("proton")
library(proton)
proton()
employees[employees$surname == 'Insecure',]
proton(action = "login", login="johnins")
for(i in 1:length(top1000passwords)){
  proton(action = "login", login="johnins", password=top1000passwords[[i]])
}
employees[employees$surname == 'Pietraszko',]
pietraszkologs <- logs[logs$login == 'slap',]
max(table(pietraszkologs$host))
which.max(table(pietraszkologs$host))
proton(action = "server", host="194.29.178.16")
unique(strsplit(bash_history," "))
  
