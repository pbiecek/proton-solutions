library(BetaBit)
proton()
data <- as.data.frame(employees)
insecure_data <- data[data$name == 'John' & data$surname == 'Insecure',]
proton(action = 'login', login=insecure_data$login)
logins <- lapply(top1000passwords, function(x){proton(action = 'login', login=insecure_data$login, password=x)})
login <- data[data$surname == 'Pietraszko', "login"]
hosts <- logs[logs$login == login,]
host <- hosts[which.max(hosts$data),]
proton(action='server', host=host$host)
