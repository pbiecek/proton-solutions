library("BetaBit")
proton()
employees[employees$name=="John",]
proton(action = "login", login="johnins")
n <- length(top1000passwords)
for (i in 1:n){
  proton(action = "login", login="johnins", password=top1000passwords[i])
}
head(logs)
head(employees)
employees[employees$surname=="Pietraszko",]
pietr <- logs[logs$login=="slap",]
hosty <- unique(pietr$host)
length(hosty) 
t.log <- c(nrow(pietr[pietr$host==hosty[1],]), nrow(pietr[pietr$host==hosty[2],]),nrow(pietr[pietr$host==hosty[3],]),nrow(pietr[pietr$host==hosty[4],]),nrow(pietr[pietr$host==hosty[5],]))
which.max(t.log)
hosty[1]
proton(action = "server", host="194.29.178.16")
head(bash_history)
length(bash_history)
stringi::stri_extract_all_regex()
