proton()
tmp <- employees %>%filter(name == 'John', surname == 'Insecure') 
JohnLogin <- tmp[,3]
proton(action = "login", login=JohnLogin)
for (i in c(1:1000)){proton(action = "login", login=JohnLogin, password = top1000passwords[i])}
tmp <- employees %>% filter(surname == 'Pietraszko') 
PietraszkoLogin <- tmp[,3]
PietraszkoLogs <- logs %>% filter(login == PietraszkoLogin) %>% count(host) %>% arrange(-n)
MostFreaquentHost <- as.character(PietraszkoLogs[1,1]) 
proton(action = "server", host=MostFreaquentHost)
tmp <- bash_history %>% strsplit(" ")
commands <- c()
for (i in c(1:length(tmp))){commands <- c(commands, tmp[[i]][1])}
commands <- unique(commands)
commands
proton(action = "login", login="slap", password = "DHbb7QXppuHnaXGN")
