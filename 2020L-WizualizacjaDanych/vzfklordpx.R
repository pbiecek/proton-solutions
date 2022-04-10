install.packages("BetaBit")
library(BetaBit)
library(dplyr)
proton()
head(employees)
employees[employees["surname"] == "Insecure"]  
proton(action="login", login="johnins")
top1000passwords
for (passwd in top1000passwords) {
  message <- proton(action="login", login="johnins", password=passwd)
  if (message == "Success! User is logged in!") {
    print(passwd)
    john_passwd <- passwd
  }
}
proton(action="login", login="johnins", password=john_passwd)  
head(logs)
for (login in unique(logs[["login"]])) {
  if (grepl("pie", login)) {
    print(login)
  }
}
logs["login"] %>% group_by(login) %>% count %>% arrange(desc(n))
proton(action = "server", host="XYZ")
