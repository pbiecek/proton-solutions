library(proton)
proton()
employees
employees[employees$name == "John" & employees$surname == "Insecure", c("login")]
proton(action = "login", login = "johnins")
top1000passwords
for (k in top1000passwords) {
  response <- proton(action = "login", login="johnins", password=k)
  if (response=="Success! User is logged in!"){
    cat(k)
  }
}
logs
employees[employees$surname == "Pietraszko", c("login")]
slap
logs[logs$login == "slap",]
table(logs[logs$login == "slap",c("host")]) -> ramka
data.frame(ramka)
proton(action = "server", host="194.29.178.16")
bash_history
split_bash_hisory <- strsplit(bash_history, " ")
split_bash_hisory
commands <- c()
for (x in split_bash_hisory) {
  commands <- c(commands, x[[1]])
}
commands
proton(action="login", login="slap", password="")
