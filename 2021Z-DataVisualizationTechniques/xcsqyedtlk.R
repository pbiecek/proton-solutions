library(proton)
proton()
filter(employees, name=="John",surname=="Insecure")
proton(action = "login", login = "johnins")
i <- 1
try <- "Password or login is incorrect"
while(print(try) == "Password or login is incorrect"){
  try <- proton(action = "login", login = "johnins", password = top1000passwords[i])
  i <- i+1
}
filter(employees, surname=="Pietraszko")
pietraszko_logs <- filter(logs, login=="slap")
sorted_logs <- sort(table(pietraszko_logs$host),decreasing=TRUE)
sorted_logs
sorted_logs[1]
proton(action = "server", host = "194.29.178.16")
library(stringr)
shortened_bash <- sub(" .*", "", bash_history)
shortened_bash <- shortened_bash[str_length(shortened_bash)>3]
shortened_bash[shortened_bash!="mcedit" & shortened_bash!="service" & shortened_bash!="whoiam"]
proton(action = "login", login="slap", password = "DHbb7QXppuHnaXGN")
