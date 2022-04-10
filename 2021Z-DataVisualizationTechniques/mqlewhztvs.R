library( dplyr)
library( proton)
proton()
employees %>% filter( name == 'John', surname == 'Insecure') 
proton( action = 'login', login = 'johnins')
for(i in 1:1000){ 
  if(proton(
      action = 'login',
      login = 'johnins',
      password = top1000passwords[i]) == 'Success! User is logged in!')
    print( top1000passwords[i]) 
  }
proton( action = 'login', login = 'johnins', password = 'q1w2e3r4t5')
employees %>% filter( surname == 'Pietraszko') 
logs %>% 
  filter( login == 'slap') %>%
  group_by( host) %>%
  select( host) %>%
  summarize( n = n()) %>%
  arrange( desc(n)) 
proton(action = "server", host="194.29.178.16")
unique( bash_history[ which( lengths( strsplit(bash_history, ' ')) == 1) ]) 
proton( action = 'login', login = 'slap', password = 'DHbb7QXppuHnaXGN')
