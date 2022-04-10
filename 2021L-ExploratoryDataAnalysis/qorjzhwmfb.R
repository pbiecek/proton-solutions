install.packages("proton")
library(proton)
proton()
employees[employees$surname=="Insecure",]
proton(action="login",login="johnins")
for (pass in top1000passwords) {
  response <- proton(action = "login", login="johnins", password = pass)
  if (response == "Success! User is logged in!"){
    cat(pass)
  }
}
employees[employees$surname=="Pietraszko",]
table(logs[logs$login=="slap", c("host")]) -> tmp
data.frame(tmp)
proton(action = "server", host="194.29.178.16")
bash_history
split_bash_history <- strsplit(bash_history, " ")
comands <- c()
for (x in split_bash_history){
  comands <- c(comands, x[[1]])
}
comands
