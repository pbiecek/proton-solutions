library(BetaBit)
library(dplyr)
proton()
johnsLogin <- employees %>%
    filter(name == "John" & surname == "Insecure") %>%
    select(login)
proton(action = "login", login = johnsLogin)
isCorrectPassword <- function(password) {
    substring(proton(action = "login", login = johnsLogin, password = password), 1, 7) == "Success"
}
results <- lapply(top1000passwords, isCorrectPassword)
johnsPassword = top1000passwords[which(results == TRUE)[[1]]]
proton(action = "login", login = johnsLogin, password = johnsPassword)
pietraszkosLogin <- (employees %>%
    filter(surname == "Pietraszko") %>%
    select(login))[[1]]
pietraszkosHost <- (logs %>%
    filter(login == pietraszkosLogin) %>%
    group_by(host) %>%
    tally(sort = TRUE) %>%
    head(1) %>%
    select(host))[[1]] %>%
    as.character()
proton(action = "server", host = pietraszkosHost)
pietraszkosPassword <- bash_history[grep("^[a-zA-Z0-9]{8,}$", bash_history, perl = TRUE)]
proton(action = "login", login = pietraszkosLogin, password = pietraszkosPassword)
