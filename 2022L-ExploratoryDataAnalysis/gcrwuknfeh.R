install.packages("proton")
library(proton)
proton()
employees[employees$name=="John" & employees$surname=="Insecure",]
proton(action = "login", login="johnins")
for (i in 1:1000){
  if (proton(action = "login", login="johnins", password=top1000passwords[i])=="Success! User is logged in!"){
    i
  }
}
employees[employees$name=="Slawomir",]
hosts = logs[logs$login=="slap",]
hosts = hosts$host
hosts = as.data.frame(table(hosts))
head(hosts[order(hosts$Freq, decreasing = TRUE),])
proton(action = "server", host = "194.29.178.16")
library(stringi)
bash_history
hasla = stri_extract_all_regex(bash_history,". ")
