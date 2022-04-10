installed.packages("proton")
library(proton)
proton()
head(employees)
employees[employees$name=="John"&employees$surname=="Insecure",]
proton(action="login",login="johnins")
for (pass in top1000passwords){
  response <- proton(action="login",login="johnins",password=pass)
  if (response=='Success! User is logged in!'){
    cat(pass)
  }
}
employees[employees$surname=="Pietraszko",]
logs[logs$login=="slap",]
count(logs[logs$login=="slap",],host)
proton(action="server",host="194.29.178.16")
split_bash_history <- strsplit(bash_history," ")
commands <- c()
for (x in split_bash_history){
  commands <- c(commands, x[[1]])
}
unique(commands)
proton(action="login",login="slap",password="DHbb7QXppuHnaXGN")
