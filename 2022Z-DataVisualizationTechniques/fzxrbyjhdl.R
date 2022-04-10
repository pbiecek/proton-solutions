install.packages("proton")
library(proton)
proton()
employees[employees$surname=='Insecure',]
proton(action = "login", login="johnins")
for(i in top1000passwords){proton(action = "login", login="johnins", password=i)}
employees[employees$surname=='Pietraszko',]
table(logs[logs$login=='slap','host'])==max(table(logs[logs$login=='slap','host']))
proton(action = "server", host="194.29.178.16")
for(i in strsplit(bash_history," ")
){proton(action = "login", login="slap", password=i)}
