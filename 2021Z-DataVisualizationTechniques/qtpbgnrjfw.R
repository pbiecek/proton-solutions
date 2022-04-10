install.packages("dplyr")
install.packages("tidyr")
install.packages("proton")
library("dplyr")
library("tidyr")
library("proton")
proton()
employees %>%
    filter(name == "John")
proton(action = "login", login = "johnins")
for (p in top1000passwords) {
    proton(action = "login", login = "johnins", password = p)
}
employees %>%
    filter(surname == "Pietraszko")
head(logs)
logs %>%
    filter(login == "slap") %>%
        group_by(host) %>%
            summarise(count = n(), .groups = "drop")
proton(action = "server", host = "194.29.178.16")
unique(sub(" .*", "", bash_history))
proton(action = "login", login = "slap", password = "DHbb7QXppuHnaXGN")
 
