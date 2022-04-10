install.packages("proton")
library(proton)
proton()
employees[employees$name == "John", ] 
proton(action = "login", login="johnins")
for(i in 1:1000)
{
  out <- proton(action="login", login="johnins", password=top1000passwords[i])
  if(out == "Success! User is logged in!")
    print(top1000passwords[i])
}
proton(action="login", login="johnins", password="q1w2e3r4t5")
logs[logs$login == "slap",]
head(sort(table(logs[logs$login == "slap","host"]), decreasing = TRUE))
proton(action = "server", host="194.29.178.16")
tmp <- strsplit(bash_history, " ")
cmds = c("ls", "cd", "mcedit", "rm", "cp", "vim", "vi", "cat", "pwd", "mc", "ps", "whoiam", "top", "service")
for(i in 1:length(tmp))
{
  cmd <- tmp[[i]][1]
  if(!(cmd %in% cmds))
    print(cmd)
}
proton(action="login", login="slap", password="DHbb7QXppuHnaXGN")
