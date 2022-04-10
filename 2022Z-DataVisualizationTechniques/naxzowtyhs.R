library(proton)
proton()
head(employees)
johns = employees[employees$name == "John", c("surname", "login")]
his_login = johns[johns$surname == 'Insecure',2]
for (pass in top1000passwords){
  proton(action = "login", login=his_login, password=pass)
}
pietraszko_login = employees[employees$surname == "Pietraszko", "login"]
his_logins <- logs[logs$login == "slap", "host"]
result <- table(his_logins)
print(sort(result, decreasing = TRUE)[1])
print(result)
bash_hist_list <- list(str(bash_history))
bash_hist_list <- unlist(bash_hist_list)
for (p_pass in bash_hist_list){
  print()
}
