install.packages("proton")
library(proton)
proton()
employees
D <- employees[employees$name == "John",]
D <- D[D$surname == "Insecure"]
proton(action = "login", login = "johnins")
top1000passwords
for (x in top1000passwords)
{
  proton(action = "login", login = "johnins", password=x)
}
employees
employees[employees$surname == "Pietraszko",]
E <- logs[logs$login == "slap",]
sort(table(E$host))
proton(action = "server", host="194.29.178.16")
bash_history
F <-  strsplit(bash_history, "\\s+")
typeof(F)
typeof(F[1])
F[1]
