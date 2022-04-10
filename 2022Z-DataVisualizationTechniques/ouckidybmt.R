install.packages("proton")
library(proton)
proton()
employeesDF <- employees
employeesDF[employeesDF$surname == "Insecure", ]
proton(action = "login", login="johnins")
for(i in top1000passwords){
  proton(action = "login", login="johnins", password= i)
}
logowanie <- logs
employeesDF[employeesDF$surname == "Pietraszko",]
logowanie <- logowanie[logowanie$login == "slap","host"]
sort(table(logowanie))
proton(action = "server", host="194.29.178.16")
