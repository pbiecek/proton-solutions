install.packages("proton")
library(proton)
proton()
data("employees")
employees
employees[employees$surname == "Pietraszko",]
for(i in top1000passwords){
  proton(action = "login", login="johnins", password=i)
}
slaplog = logs[logs$login == "slap",]
max(table(slaplog$host))
head(bash_history)
library(stringi)
df <- data.frame(line=bash_history)
foo <- data.frame(do.call('rbind', strsplit(as.character(df$line),' ',fixed=TRUE)))
head(foo)
foo <- strsplit(bash_history," ")
typeof(foo)
for (i in foo){
  if(length(i) == 1){
    print(i)
  }
}
unique(vec)
head(bash_history)
pass = "DHbb7QXppuHnaXGN"
