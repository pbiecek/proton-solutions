library("dplyr")
head(employees)
names(employees)
right_person <- employees[employees$surname=="Insecure",]
right_person
head(top1000passwords)
typeof(top1000passwords)
for (i in 1:1000){
  proton(action="login", login="johnins", password=as.array(top1000passwords)[i])
}
head(logs)
pietraszko_login <- employees[employees$surname=="Pietraszko",]
pietraszko_login
logs %>%
  filter(login=="slap")%>%
  group_by(host)%>%
  summarise(count=n())
head(bash_history)
