install.packages("proton")
library(proton)
proton()
data("employees")
imionka <- employees[employees$name == "John", ]
login <- employees[employees$surname == "Pietraszko", ]
login[, 3]
proton(action = "login", login="johnins")
data("top1000passwords")
top1000passwords
szukajHasla <- function(){
  haslo <- "brak"
  for(i in 1:1000){
    a <- top1000passwords[i]
    if (proton(action = "login", login="johnins", password=a) == "Success! User is logged in!"){
      haslo <- top1000passwords[i]
    }
  }
  
  haslo
}
szukajHasla()
for(i in 1:10){
  if (proton(action = "login", login="johnins", password=top1000passwords[i]) == "Success! User is logged in!"){
    top1000passwords[i]
  }
  else{
    haslo
  }
}
a <- top1000passwords[20]
proton(action = "login", login="johnins", password=a)
data("logs")
head(logs)
dane <- data.frame(table(logs[logs$login == "slap", ]$host))
dane[order(-dane$Freq), ][1, 1]
proton(action = "server", host="194.29.178.16")
data("bash_history")
bash_history
sbh <- strsplit(bash_history, " ")
comads <- ""
for(i in sbh){
  comads <- c(comads, i[[1]])
}
for (i in comads){
  proton(action = "login", login="johnins", password=i)
}
