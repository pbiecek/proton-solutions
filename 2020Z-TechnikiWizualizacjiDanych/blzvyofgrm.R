library(BetaBit)
library("dplyr")
library(stringr)
proton()
data1 <-employees
login <-filter(data1,name == "John")
print(login)
passwords <- top1000passwords
for (i in passwords) {
  
  proton(action = "login", login="johnins",password = i)
  
}
data3 <-employees
login2 <-filter(data3,surname == "Pietraszko")
print(login2)
data2<-logs
data2<-filter(data2,login == "slap")
data2<-count(data2,host)
data4<-bash_history
test<-word(data4,1)
test<-unique(test)
print(test)
