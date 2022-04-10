install.packages("proton")
install.packages("dplyr")
library(proton)
library(dplyr)
proton()
employees %>% filter(name=="John",surname == "Insecure") %>% select(login) 
proton(action = "login", login="johnins")
func <- function(x)
{
  res <- proton(action="login",login="johnins",password=x)
  
}
Z <- lapply(top1000passwords,FUN=func)
employees %>% filter(surname == "Pietraszko") %>% select(login) 
logs %>% filter(login=="slap") %>% count(host)
proton(action = "server", host="194.29.178.16")
strsplit(bash_history," ") -> pom
v = c()
for(word in pom){
  v = c(v,word[[1]])
}
v <- unique(v)
v
proton(action = "login", login="slap", password = "DHbb7QXppuHnaXGN")
