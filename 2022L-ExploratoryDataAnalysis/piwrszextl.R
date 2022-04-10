library(proton)
proton()
data("employees")
employees[employees$surname== "Insecure", c('login')]
proton(action = "login", login="johnins")
top1000passwords
length(top1000passwords)
top1000passwords[2]
for(i in 1:1000){
  proton(action = "login", login="johnins", password=top1000passwords[i])
  
}
data("logs")
head(logs)
logs[logs$login =="johnins",c("host")]
proton(action = "server", host="194.29.178.56")
data(mtcars)
head(mtcars)
head(mtcars,10)
tail(mtcars)
?mtcars
dim(mtcars)
str(mtcars)
mtcars[2:3,4:5]
mtcars[,1:4]
mtcars[1,1]
mtcars[1:10,2:3]
mtcars[,c("am","wt","mpg")]
mtcars[["mtg"]]
mtcars$mpg
dim(mtcars)
str(mtcars)
unique(mtcars$cyl)
length(unique(mtcars$cyl))
mean(mtcars[mtcars$cyl==4,c("drat")])
median(mtcars[mtcars$cyl==4,c("drat")])
plot(mtcars$mpg,mtcars$hp)
barplot(mtcars$cyl)
barplot(table(mtcars$cyl))
install.packages("proton")
library(proton)
proton()
