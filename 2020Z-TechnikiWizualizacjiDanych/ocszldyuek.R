install.packages("BetaBit")
library(BetaBit)
proton()
install.packages('data.table')
empl <- data.table::data.table(employees)
John_login <- empl[name == 'John']
John_login <- John_login[surname == 'Insecure']
Pietraszko_login <- empl[name == 'Slawomir']
Pietraszko_login <- empl[surname == 'Pietraszko']
proton(action <- "login", login=John_login$login)
t100 <- unique(top1000passwords)
for (pass in t100){
  if (proton(action = "login", login=John_login$login, password=pass) != "Password or login is incorrect"){
    Jpass <- pass
    break
  }
}
proton(action = "login", login=John_login$login, password=Jpass)
install.packages('dplyr')
library(dplyr)
countedLogs <- dplyr::group_by(logs, host)
PietraszkoLogs <- dplyr::filter(countedLogs,login == Pietraszko_login$login) %>% count()
for (ser in PietraszkoLogs$host){
  if( proton(action="server", host=ser)){
    Jhost <- ser
  }
}
for (pass in bash_history){
  if (proton(action = "login", login=Pietraszko_login$login, password=pass) != "Password or login is incorrect"){
    Ppass <- pass
    break
  }
}
