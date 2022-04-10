library(BetaBit)
proton()
head(employees)
typeof(employees)
employees$login[employees$surname=="Insecure"]
proton(action = "login", login="johnins")
head(top1000passwords)
for (pass in top1000passwords){
  proton(action = "login", login="johnins", password=pass)
}
head(logs)
logs%>%count(host)
