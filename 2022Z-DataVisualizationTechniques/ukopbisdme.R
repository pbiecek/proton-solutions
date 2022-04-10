install.packages("proton")
library(proton)
proton()
employees[employees$name == "John", ]
proton(action = "login", login="johnins")
for (i in  top1000passwords){proton(action = "login", login="johnins", password=i)}
employees[employees$surname == "Pietraszko", ]
data.frame(table(logs[logs$login == "slap", "host"]))
proton(action = "server", host="194.29.178.16")
head(bash_history)
length(bash_history)
for(i in 1:length(bash_history)){
  print(i)
  proton(action = "login", login="slap", password=strsplit(bash_history[[i]], " ")[1])
  
}
bash_history[1]
