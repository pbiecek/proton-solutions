install.packages("BetaBit")
library(BetaBit)
proton()
employees
names(employees)
employees[employees$name=="John" & employees$surname=="Insecure", "login"] -> loginJohn
proton(action = "login", login = loginJohn)
top1000passwords
for (i in 1:1000) {
  proton(action = "login", login = loginJohn, password=top1000passwords[i])
}
employees[employees$surname=="Pietraszko", "login"] -> loginPietraszko
logs
names(logs)
logs %>% filter(login==loginPietraszko) %>% group_by(host) %>% summarise(count= n()) -> hosts
hosts
hosts[which.max(hosts$count), "host"] -> mostoftenhost
proton(action = "server", host="194.29.178.16")
bash_history
library(stringi)
?stri_extract_all_words()
