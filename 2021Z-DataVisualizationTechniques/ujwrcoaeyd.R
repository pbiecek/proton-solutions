library(dplyr)
library(proton)
proton()
employees %>% 
  filter(name == "John", surname == "Insecure") %>%
  select(login) -> johnInsecureLogin
johnInsecureLogin <- as.character(johnInsecureLogin)
find_password <- function(password){
  if (proton(action = "login", login = johnInsecureLogin, password = password) == "Success! User is logged in!"){
    return(password)
  }
}
johnInsecurePassword <- sapply(top1000passwords, find_password, USE.NAMES = FALSE) 
johnInsecurePassword <- Filter(Negate(is.null), johnInsecurePassword)              
johnInsecurePassword <- as.character(johnInsecurePassword)                         
employees %>% 
  filter(surname == "Pietraszko") %>%
  select(login) -> slawomirPietraszkoLogin
slawomirPietraszkoLogin <- as.character(slawomirPietraszkoLogin)
logs %>%
  filter(login == slawomirPietraszkoLogin) %>%
  count(host, sort = TRUE) %>%
  ungroup() %>%
  select(host) -> host
host <- as.character(host[[1]])[1]
proton(action = "server", host = host)
slawomirPietraszkoPassword <- gsub("\\s.*", "", bash_history) 
slawomirPietraszkoPassword <- grep("^.{8,}$", slawomirPietraszkoPassword, value = TRUE) 
proton(action = "login", login = slawomirPietraszkoLogin, password = slawomirPietraszkoPassword)
