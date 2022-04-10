install.packages("BetaBit")
library(BetaBit)
proton()
employees[which(employees$surname=="Insecure"),]$login -> login
proton(action = "login", login=login)
for (i in top1000passwords) {
  proton(action = "login", login=login, password=i)
}
dplyr::count(logs, login) %>%
  arrange(desc(n)) 
dplyr::count(logs[which(logs$login=="slap"),], host)$host[1] 
proton(action = "server", host="194.29.178.16")
unique(stringi::stri_extract_first_regex(bash_history, "[^ ]*"))
proton(action = "login", login="slap", password="DHbb7QXppuHnaXGN")
