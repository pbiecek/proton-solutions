install.packages("proton")
library(proton)
proton()
install.packages("styler")
head(employees)
employees[employees$name == "John", ]
employees[employees$surname == "Pietraszko", ]
proton(action = "login", login = "johnins")
top1000passwords
for (pass in top1000passwords) {
  string <- proton(action = "login", login = "johnins", password = pass)
  if (string == "Success! User is logged in!") {
    print("--------------------------------------")
    cat(pass)
  }
}
head(logs)
temp <- logs[logs$login == "slap", ]
temp
temp <- temp[, c("host")]
temp
View(data.frame(table(temp)))
proton(action = "server", host = "194.29.178.16")
head(bash_history)
a <- c()
for (com in bash_history) {
  temp <- strsplit(com, split = " ")
  print(temp[[1]][[1]])
  a <- c(a, temp[[1]][[1]])
}
table(a)
proton(action = "login", login = "slap", password = "DHbb7QXppuHnaXGN")
