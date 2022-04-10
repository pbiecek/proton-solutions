install.packages("proton")
library(proton)
proton()
data(employees)
log_insecure <-employees[employees$surname == "Insecure"& employees$name == "John","login"]
proton(action = "login", login=log_insecure)
data("top1000passwords")
head(top1000passwords)
head(top1000passwords)[6]
for (i in 1:length(top1000passwords)){
  response <- proton(action = "login", login=log_insecure, password=top1000passwords[i])
  print(i)
  if (response == "Success! User is logged in!"){
    print(top1000passwords[i])
    break
  }
}
data(logs)
log_piet <- employees[employees$surname == "Pietraszko","login"]
which.max(table(logs[logs$login == log_piet, "host"]))
table(logs[logs$login == log_piet, "host"])[134]
proton(action = "server", host="194.29.178.16")
