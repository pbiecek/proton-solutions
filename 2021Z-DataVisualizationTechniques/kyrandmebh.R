library(dplyr)
library(proton)
proton()
employees %>% filter(name == "John", surname == "Insecure")
proton(action = "login", login="johnins")
for(password in top1000passwords){
  proton(action = "login", login="johnins", password=password)
}
employees %>% filter(name == "Slawomir", surname == "Pietraszko")
logs %>% filter(login == "slap") %>% group_by(host) %>%
  summarize(logs = n()) %>% arrange(desc(logs))
proton(action="server", host="194.29.178.16")
comms <- c()
extract_command <- function(command){
  comms <<- c(comms, strsplit(command, " ")[[1]][1])
}
lapply(bash_history, extract_command)
comms <- as.data.frame(comms)
comms %>% group_by(comms) %>% summarize() -> comms
comms
proton(action="login", login="slap", password="DHbb7QXppuHnaXGN")
