library(proton)
proton()
log_ins <- employees[employees$name == "John" & employees$surname == "Insecure", "login"]
proton(action = "login", login = log_ins)
for(i in 1:length(top1000passwords)){
  response <- proton(action = "login", login = log_ins, password = top1000passwords[i])
  if(response == "Success! User is logged in!"){
    print(top1000passwords[i])
    break
  }
}
log_piet <- employees[employees$surname == "Pietraszko", "login"]
host_piet <- names(which.max(table(logs[logs$login == log_piet, "host"])))
proton(action = "server", host = host_piet)
commands <- strsplit(bash_history, " .+")
unique(commands)
proton(action = "login", login = log_piet, password = "DHbb7QXppuHnaXGN")
