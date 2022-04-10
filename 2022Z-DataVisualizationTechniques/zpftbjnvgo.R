install.packages("proton")
library(proton)
proton()
head(employees)
dim(employees)
str(employees)
login <- employees[employees$name=="John" & employees$surname=="Insecure", "login"]
proton(action = "login", login=login)
head(top1000passwords, 100)
for (password in top1000passwords) {
  proton(action = "login", login=login, password=password)
}
head(logs)
str(logs)
pietraszko_login <- employees[employees$name=="Slawomir" & employees$surname=="Pietraszko", "login"]
pietraszko_logs <- logs[logs$login==pietraszko_login, ]
str(pietraszko_logs)
hosts <- pietraszko_logs$host
str(hosts)
hosts <- as.vector(hosts)
unique(hosts)
length(unique(hosts))
table(hosts)
str(table(hosts)) 
df_hosts <- as.data.frame(table(hosts))
most_frequent <- df_hosts[which.max(df_hosts$Freq), ] 
most_frequent <- "194.29.178.1" 
proton(action = "server", host=most_frequent)
head(bash_history)
str(bash_history)
library(stringr)
