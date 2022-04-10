install.packages("proton")
library(proton)
proton()
head(employees)
employees[employees$name == "John"& employees$surname == "Insecure",]
proton(action = "login", login="johnins")
for (i in 1:length(top1000passwords)) {
  proton(action = "login", login="johnins",password=top1000passwords[i])
}
head(logs)
employees[employees$surname=="Pietraszko",]
which.max(table(logs[logs$login=="slap","host"]))
table(logs[logs$login=="slap","host"])[134]
proton(action="server",host="194.29.178.16")
