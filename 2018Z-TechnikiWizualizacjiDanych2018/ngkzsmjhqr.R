    proton(action = "login", login="johnins") 
    for(i in 1:1000) proton(action = "login", login="johnins", password=top1000passwords[i])
    
       x <- logs[logs$login=="slap",]
       library(plyr)
       head(count(x$host), 1)
       
