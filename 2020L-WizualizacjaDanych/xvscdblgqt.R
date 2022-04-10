login = employees[employees$surname == 'Insecure',]['login']
for(pass in top1000passwords)
	  proton(action = "login", login=login, password=pass)
pietr = employees[employees$surname == 'Pietraszko',]['login']
logs[logs$login == pietr,,]
