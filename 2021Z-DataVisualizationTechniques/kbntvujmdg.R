install.packages("dplyr")
install.packages("proton")
library(dplyr)
library(proton)
proton()
pracownicy <- data.frame(employees)
pracownicy %>% filter(name == "John")
proton(action = "login", login = select(filter(pracownicy,name=="John",surname == "Insecure"),login))
hasla <- data.frame(top1000passwords)
for(x in top1000passwords){
  proton(action = "login", login = select(filter(pracownicy,name=="John",surname == "Insecure"),login),password=x)
}
logi <- data.frame(logs)
Pietraszko_login <- as.character(employees %>% filter(surname =="Pietraszko") %>% select(login))
logi %>% filter(login == Pietraszko_login)
hosts <- logi %>% filter(login == Pietraszko_login) %>% group_by(host) %>% summarize(count =n()) %>% arrange(-count)
proton(action = "server",host = as.character(hosts$host[1]))
bash_history
commands_tab <- sub(" .*", "", bash_history)
for(x in commands_tab){
  proton(action = "login", login = Pietraszko_login,password=x)
}
