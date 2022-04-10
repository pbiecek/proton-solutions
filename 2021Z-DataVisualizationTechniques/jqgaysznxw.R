library(proton)
library(dplyr)
library(stringi)
proton()
employees %>%
  filter(name == "John", surname == "Insecure") %>%
  select(login) -> john_login
proton(action = "login", login=john_login)
for (password in top1000passwords) {
  if (proton(action ="login", login=john_login, password=password) == "Success! User is logged in!") {
    break() 
  }
}
employees %>%
  filter(surname == "Pietraszko") %>%
  select(login) %>%
  as.character() -> login_celu
logs %>%
  filter(login == login_celu) %>%
  count(host, name = "liczba") %>% 
  arrange(-liczba) %>%
  head(1) %>%
  .$host %>%
  as.character() -> host_celu
proton(action = "server", host=host_celu)
unique(
  bash_history[!stri_detect_fixed(bash_history, " ")]
  ) -> mozliwe_hasla
stri_sort(mozliwe_hasla) -> hasla_posortowane 
haslo_celu <- hasla_posortowane[1]
proton(action = "login", login=login_celu, password=haslo_celu)
rm(list = ls())
