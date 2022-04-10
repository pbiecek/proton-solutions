library(dplyr)
df <- as.data.frame(employees)
passes <- top1000passwords
login1 <- df[which(df$name == 'John' & df$surname == 'Insecure'), 3]
for(i in 1:1000){
  proton(action = "login", login=login1, password=passes[i])
}
df2 <- logs[logs$login == "johnins",]
df2 %>% count(host)
