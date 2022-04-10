install.packages("proton")
library(proton)
proton()
tab <- employees
tab[tab$name == "John",]
proton(action = "login", login="johnins")
for(i in 1:1000){
  proton(action = "login", login="johnins",password=top1000passwords[i])
}
tab[tab$surname=="Pietraszko",] 
logs[logs$login=="slap", "host"]
proton(action = "server", host="194.29.178.16")
b <- strsplit(bash_history,"")
for(x in b){
  comads <- c(comads,x[[1]])
}
for(comads in unique(comads)){
  proton(action="login", login="slap", password = comads)
}
