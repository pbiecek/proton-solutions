install.packages("BetaBit")
library(BetaBit)
proton()
which(employees[,2]=="Insecure")
employees[217,]
proton(action = "login", login = "johnins")
top1000passwords
for(haslo in top1000passwords){
  proton(action = "login", login = "johnins", password=haslo)
}
logs
tabela <- as.data.frame(table(logs[1:2]))
head(tabela)
