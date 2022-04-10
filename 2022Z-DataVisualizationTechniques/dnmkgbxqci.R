install.packages("proton")
library(proton)
proton()
head(employees[employees$name=='John',]) 
proton(action='login',login='johnins')
for(x in top1000passwords){
  proton(action='login',login='johnins', password=x)
}
head(employees[employees$surname=='Pietraszko',]) 
tmp <- logs[logs$login=='slap',]
tail(sort(table(tmp$host)),1)
proton(action='server',host='194.29.178.16')
head(bash_history,100)
for(x in bash_history){
  proton(action='login',login='slap', password=x)
}
