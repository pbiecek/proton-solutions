  proton(action = "login", login="johnins", password=top1000passwords[i])
}
head(logs)
data.frame(table(logs$host))
table(logs$login)
 for(i in 1:length(data.frame(table(logs$host))[, 1])){
   if(data.frame(table(logs$host))[i, 2] == max(data.frame(table(logs$host))[, "Freq"])){
     host = data.frame(table(logs$host))[i, 1]
   }
 }
proton(action = "server", host="XYZ")
data.frame(table(logs$login))[data.frame(table(logs$login))$Var1 == "slap", ]
logs[logs$login == "slap", ]
194.29.178.91
