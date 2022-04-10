install.packages("proton")
library(proton)
proton()
jl <- employees[employees$name == "John" & employees$surname == "Insecure",]
jl
proton(action = "login", login="johnins")
head(top1000passwords)
pwd <- ""
for (pw in top1000passwords) {
  proton(action = "login", login="johnins", password=pw)
}
proton(action = "login", login="johnins", password="freepass")
