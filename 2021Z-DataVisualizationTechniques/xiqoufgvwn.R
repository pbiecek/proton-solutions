library(dplyr)
emp<-proton::employees
emp %>% filter(name=="John", surname=="Insecure") %>% select(login)
for( pass in top1000passwords){
  rep <- proton(action = "login", login="johnins", password=pass)
  if(rep=="Success! User is logged in!"){
    ans <- pass
    break
  }
}
emp %>% filter(surname=="Pietraszko") %>% select(login)
logs %>% filter(login=="slap") %>% count(host)
commands<-c("")
for(com in bash_history){
  com<-strsplit(com, " ")[[1]][1]
  if(! com %in% commands){
    commands<- c(commands,com)
  }
}
