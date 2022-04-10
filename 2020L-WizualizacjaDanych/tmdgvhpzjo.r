install.packages("BetaBit")
library(BetaBit)
proton()
employees[employees$surname == "Insecure", ]
john_login <- "johnins"
proton(action = "login", login=john_login)
top1000passwords
for (pass in top1000passwords){
  result <- proton(action = "login", login=john_login, password=pass)
  if(result == "Success! User is logged in!"){
    john_pass <- pass
  }
}
john_pass
