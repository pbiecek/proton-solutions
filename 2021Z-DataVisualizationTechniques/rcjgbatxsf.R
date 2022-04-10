library(proton)
library(dplyr)
proton()
Johns_login <- employees %>% filter(name == "John", surname == "Insecure") %>% select(login)
proton(action = "login", login = Johns_login)
for (pass in top1000passwords){
  proton(action = "login", login = Johns_login, password = pass)
}
Pietraszkos_login <- employees %>% filter(surname == "Pietraszko") %>% select(login)
Pietraszkos_logs <- logs %>% filter(login == Pietraszkos_login$login) %>% count(host) %>% arrange(-n) %>% head(1) %>% select(host)
this_workstation <- as.vector(Pietraszkos_logs[1,1])   
proton(action = "server", host = this_workstation)
commands <- bash_history[grepl("^\\w+$", bash_history)]
commands <- as.data.frame(commands) %>% count(commands) %>% arrange()  
Pietraszkos_password <- as.vector(commands[1,1])  
proton(action = "login", login = Pietraszkos_login, password = Pietraszkos_password)
