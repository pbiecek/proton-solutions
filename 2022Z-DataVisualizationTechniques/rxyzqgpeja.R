library(proton)
proton()
employees[employees$surname=='Insecure',]
proton(action='login', login='johnins')
for (pass in top1000passwords) {
  proton(action='login', login='johnins', password=pass)
}
employees[employees$surname=="Pietraszko",]
tail(sort(table(logs[logs$login=='slap','host'])))
proton(action='server', host='194.29.178.16')
library(stringi)
possible <- stri_extract_all_regex(bash_history, '^(\\w+\\s+)')
possible <- unlist(possible)
for(pass in possible) {
  pass <- stri_replace_all_regex(pass, '\\s', '')
  proton(action='login', login='slap', password=pass)
}
