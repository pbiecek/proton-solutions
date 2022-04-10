install.packages("proton")
library(proton) 
proton()
head(employees)
employees[employees$name == "John" &
            employees$surname == "Insecure","login"]
proton(action = "login", login ='johnins')
head(top1000passwords)
for (pass in top1000passwords) {
  response <- proton(action = "login", login ='johnins', password= pass)
  if (response == 'Success! User is logged in!'){
    cat(pass)
  }  
}
proton(action = "server", host="XYZ")
