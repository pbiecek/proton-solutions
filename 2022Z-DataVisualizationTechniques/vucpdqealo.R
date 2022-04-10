install.packages("proton")
library(proton)
proton()
head(employees)
employees[employees$name == "John" & employees$surname == "Insecure",]
proton(action = "login", login="johnins", hint=TRUE)
head(top1000passwords)
for (pass in top1000passwords) {
  if (proton(action = "login", login="johnins", password=pass) == "Success! User is logged in!") {
    print(pass)
    break
  }
}
proton(action = "login", login="johnins", password="q1w2e3r4t5")
head(logs)
employees[employees$surname == "Pietraszko",]
tail(sort(table(logs[logs$login == "slap", "host"])))
proton(action = "server", host="194.29.178.16")
library(stringi)
head(bash_history)
library(stringr)
df <- stringr::str_split(bash_history, " ", simplify = TRUE)
commands <- df[,1]
for (pass in unique(commands)) {
  proton(action = "login", login="slap", password=pass)
}
