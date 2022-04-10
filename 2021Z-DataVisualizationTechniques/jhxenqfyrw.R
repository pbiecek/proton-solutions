library(proton)
library(dplyr)
proton()
data("employees")
login<-employees %>%
  filter(name=="John",surname=="Insecure") %>%
  select(login)
proton(action = "login", login=login)
data("top1000passwords")
top1000passwords[1]
for(i in top1000passwords){
  x <- proton(action="login",login=login,password=i)
}
data("logs")
head(logs)
employees %>%
  filter(surname =="Pietraszko")
host<-logs %>%
  filter(login == "slap")%>%
  select(host)%>%
  group_by(host)%>%
  count()%>%
  arrange(n)%>%
  select(host)%>%
  head(1)
host
proton(action="server",host="194.29.178.16")
data("bash_history")
bash_history %>%
  grep(pattern = " ",value = TRUE,invert = TRUE)%>%
  unique()
proton(action="login",login="slap",password="DHbb7QXppuHnaXGN")
