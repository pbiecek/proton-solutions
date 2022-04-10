install.packages("proton")
library(proton)
proton()
x<- employees[employees$name == "John",  ]
x[x$surname == "Insecure", ]
proton(action = "login", login = "johnins")
for (pass in top1000passwords){
    proton(action = "login", login="johnins", password=pass)
}
employees[employees$surname == "Pietraszko", ]
temp <- logs[logs$login == "slap", ]
temp$host <- as.vector(temp$host)
temp <- table(temp$host)
which.max(temp)
proton(action = "server", host="194.29.178.16")
bash_history
