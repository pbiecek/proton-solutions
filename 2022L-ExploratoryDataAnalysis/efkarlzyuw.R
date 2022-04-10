install.packages("proton")
library(proton)
proton()
mtcars
head(mtcars, 10)
tail(mtcars, 6)
?mtcars
??mtcars
dim(mtcars)
str(mtcars)
mtcars[2:3,4:5]
mtcars[,1:5]
mtcars[1,1]
mtcars[1:10,2:3]
mtcars[,c('am','wt','mpg')]
mtcars[['mpg']]
mtcars$mpg
dim(mtcars)
str(mtcars)
unique(mtcars$cyl)
mean(mtcars[mtcars$cyl == 4,'drat'])
median(mtcars[mtcars$cyl == 4,'drat'])
  
plot(mtcars$mpg, mtcars$hp)
barplot((mtcars$cyl))
table(mtcars$cyl)
barplot(table(mtcars$cyl))
install.packages("proton")
library(proton)
proton()
df = employees
head(df)
dim(df)[1]
df[df$name == 'John' & df$surname == 'Insecure', ]
  
proton(action = "login", login=df[df$name == 'John' & df$surname == 'Insecure', ][3])
pass = top1000passwords
head(pass)
pass[2]
for(p in pass){
  proton(action = "login", login=df[df$name == 'John' & df$surname == 'Insecure', ][3], password=p)
}
ji = logs[logs$login == 'johnins',]
(table(ji$host))
df
df[df$surname == 'Pietraszko', ]
pass
table(logs[logs$login == 'slap',]$host)
log = as.data.frame(table(logs[logs$login == 'slap',]$host))
logs
log[order(log$Freq),]
proton(action = "server", host="194.29.178.16")
bash_history[1]
strsplit(bash_history, ' +')
