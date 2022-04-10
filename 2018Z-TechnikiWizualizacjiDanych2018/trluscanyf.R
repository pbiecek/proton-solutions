employees$login[employees$surname == "Insecure"]
proton(action = "login", login = "johnins")
for (pass in top1000passwords) {
  message <- proton(action = "login", login = "johnins", password = pass)
  if (message == "Success! User is logged in!") {
    break
  }
}
proton(action = "login", login = "johnins", password = pass)
