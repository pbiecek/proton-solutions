library(dplyr)
proton::proton()
proton::employees %>%
  filter(name =="John", surname == "Insecure") %>%
  select("login") %>%
  toString ->
  john_ins_login
proton::proton(action = "login", login=john_ins_login)
for (pass in proton::top1000passwords) { 
  if(proton::proton(action ="login", login=john_ins_login, password=pass) == "Success! User is logged in!") {
    john_ins_password <- pass
  }
}
pass <- NULL
proton::proton(action ="login", login=john_ins_login, password=john_ins_password)
proton::employees %>%
  filter(surname == "Pietraszko") %>%
  select(login) %>%
  toString() ->
  pietraszko_login
proton::logs %>%
  filter(login == pietraszko_login) %>%
  group_by(host) %>%
  summarise(count = n()) %>%
  arrange(-count) %>%
  head(1) %>%
  select(host) %>%
  pull %>% 
  toString ->
  ip_str
proton::proton(action="server", host=ip_str)
proton::bash_history[grepl("^\\w+$", proton::bash_history)] %>% 
  tbl_df() %>% 
  group_by(value) %>% 
  summarise(count = n()) -> 
  candidates
pietraszko_password <- "DHbb7QXppuHnaXGN"
proton::proton(action="login", login=pietraszko_login, password=pietraszko_password)
