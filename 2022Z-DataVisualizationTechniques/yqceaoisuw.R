install.packages("proton")
library(proton)
proton()
johnsLogin <- employees[employees$name == "John" & employees$surname == "Insecure" , "login"]
proton(action = "login", login=johnsLogin)
for (val in top1000passwords)
{
  proton(action = "login", login = johnsLogin, password=val)
}
pietraszkosLogin <- employees[employees$surname == "Pietraszko", "login"]
pietraszkosLogs <- logs[logs$login == pietraszkosLogin, ]
sort(table(pietraszkosLogs$host))
proton(action = "server", host = "194.29.178.16")
noSpaces <- bash_history[!grepl("[' ']+", bash_history)]
unique(noSpaces)
proton(action = "login", login=pietraszkosLogin, password = "DHbb7QXppuHnaXGN")
