library(proton)
proton()
employees[c(employees$name == "John", employees$surname == "Insecure"),]
proton(action = "login", login = "johnins")
for(pass in top1000passwords) {
  proton(action = "login", login="johnins", password=pass)
}
employees[employees$surname == "Pietraszko",] 
tak <- logs[logs$login == "slap",]
tak2 <- as.data.frame(table(tak["host"])) 
