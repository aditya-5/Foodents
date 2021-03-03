from random import choice, randint

words = []
names = []

with open("EnglishWords.txt", "r") as f:
    line = f.readline().strip()
    while line:
        words.append(line)
        line = f.readline().strip()

with open("names.txt", "r") as f:
    line = f.readline().strip()
    while line:
        names.append(line)
        line = f.readline().strip()

with open("sql_insert.txt", "w") as f:
    for i in range(0, 100):
        username = ""
        password = ""
        email = ""
        first_name = ""
        last_name = ""

        username = choice(words) + choice(words)
        if randint(0, 1):
            username = username[0].upper() + username[1:]
        if randint(0, 1):
            username += str(randint(0, 100))

        pw1 = choice(words)
        if randint(0, 1):
            pw1 = pw1.upper()
        pw2 = choice(words)
        if randint(0, 1):
            pw2 = pw2.upper()
        pw3 = choice(words)
        if randint(0, 1):
            pw3 = pw3.upper()
        password = pw1 + pw2 + pw3 + str(randint(0, 1000))

        first_name = choice(names)
        last_name = choice(names)

        email = first_name.lower() + "." + last_name.lower() + "@student.manchester.ac.uk"

        sql = f"INSERT INTO USERS (username, password, email, first_name, last_name) VALUES ('{username}', '{password}', '{email}', '{first_name}', '{last_name}');"
        f.write(sql)