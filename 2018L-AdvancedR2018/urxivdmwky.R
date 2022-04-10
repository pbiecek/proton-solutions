library("BetaBit")
proton()
proton(action = "login", login="johnins")
proton(action = "login", login="slap", password="DHbb7QXppuHnaXGN")
head(employees)
employees[employees$surname == "Insecure",]
sum(top1000passwords == "john")
for(i in 1:1000){
  if(grepl(top1000passwords[i], "i")) print(i)
}
sort(top1000passwords)
for(i in 1:1000){
  proton(action = "login", login="johnins", password=top1000passwords[i])
}
head(logs)
proton(action = "server", host="194.29.178.16")
(table(logs[logs$host=="194.29.178.16",1]))[(table(logs[logs$host=="194.29.178.16",1]))!=0]
sort(unique(sort(logs$login))=="pietraszko")
    Proton
    
head(bash_history)
unique(gsub(" .*$", "", bash_history))
    
  
    
    
    
    
    
    
    
    
    
    
    
    
    
