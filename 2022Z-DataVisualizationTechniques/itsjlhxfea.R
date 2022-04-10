install.packages("proton")
library(proton)
proton()
employees[employees$name == "John" & employees$surname == "Insecure", "login"]
proton(action = "login", login="johnins")
for (pass in top1000passwords) {
  if (proton(action = "login", login="johnins", password=pass) == "Success! User is logged in!") {
    print(pass)
  }
}
login <- employees[employees$surname == "Pietraszko", "login"]
which.max(table(logs[logs$login == login, ]$host))
proton(action = "server", host="194.29.178.16")
library(stringr)
commands <- stringr::str_split(bash_history, " ", simplify = T)[, 1]
for (command in unique(commands)) {
  proton(action = "login", login = "slap", password = command)
}
