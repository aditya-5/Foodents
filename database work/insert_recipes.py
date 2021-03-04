# I could not find a suitable online JSON to CSV parser (or to any other format, really), 
# so I'm doing it manually

from entries import Entries as e
from random import choice, randint


def printKeys():
    print("Total keys in DB: ", totalKeys)
    print("Keys common to all entries: ", commonKeys)
    print("Inconsistent keys: ", [k for k in totalKeys if k not in commonKeys])

def populateRecipes():
    # creates the query to populate RECIPES

    # ['id', 'name', 'source', 'preptime', 'waittime', 'cooktime', 'servings', 
    # 'comments', 'calories', 'fat', 'satfat', 'carbs', 'fiber', 'sugar', 'protein', 
    # 'instructions', 'ingredients', 'tags']

    # user_id, date_created, servings, instructions, story, time, difficulty

    userIds = range(13, 113)

    # user_id = choice(userIds)
    # date_created = "2021-03-03"
    # servings = e.entries["2"]["servings"]
    # instructions = e.entries["2"]["instructions"]
    # story = e.entries["2"]["comments"]
    # time = e.entries["2"]["preptime"] + e.entries["2"]["waittime"] + e.entries["2"]["cooktime"]
    # difficulty = randint(1, 4)

    # sql = f"INSERT INTO RECIPES (user_id, date_created, servings, instructions, story, time, difficulty) VALUES ({user_id}, '{date_created}', {servings}, '{instructions}', '{story}', {time}, {difficulty});"

    with open("sql_insert.txt", "w") as f:
        sql = "DELETE FROM RECIPES;\n"
        f.write(sql)

        sql = "INSERT INTO RECIPES (user_id, name, date_created, servings, instructions, story, time, difficulty) VALUES "
        f.write(sql)
        for entry in e.entries:
            recipe_id = e.entries[entry]["id"] # only for tests, recipe_id is auto_increment
            user_id = choice(userIds)
            name = e.entries[entry]["name"]
            date_created = str(randint(2012, 2022)) + "-" + str(randint(1, 12)) + "-" + str(randint(1, 28))
            servings = e.entries[entry]["servings"]
            instructions = e.entries[entry]["instructions"]
            story = e.entries[entry]["comments"]
            time = (e.entries[entry]["preptime"] + e.entries[entry]["waittime"] + e.entries[entry]["cooktime"]) / 10
            if time == 0: 
                time = randint(1, 5) * 10
            difficulty = randint(1, 4)

            name = deleteApostrophes(name)
            instructions = deleteApostrophes(instructions)
            story = deleteApostrophes(story)

            sql = f"({user_id}, \"{name}\", \"{date_created}\", {servings}, \"{instructions}\", \"{story}\", {time}, {difficulty}),\n"

            f.write(sql)

        # last , must be manually transformed into ;

def deleteApostrophes(text):
    # removes single and double quotes from string

    text = text.replace("\'", "\\\'")
    return text.replace("\"", "\\\"")

# def deleteApostrophes():
#     text = ""
#     with open("sql_insert.txt", "r") as f:
#         text = f.readlines()
    
#     with open("sql_insert.txt", "w") as f:
#         for line in text:
#             line = line.replace("\'", "\\\'")
#             line = line.replace("\"", "\\\"")
#             f.write(line)


def findKeys():
    # finds the total number of keys and the keys that are common to all entries

    commonKeys = list(e.entries["2"].keys())
    totalKeys = []

    for entry in e.entries:
        entry = e.entries[entry]
        keys = entry.keys()
        for key in keys:
            if key not in totalKeys:
                totalKeys.append(key)
        for key in commonKeys:
            if key not in keys:
                commonKeys.remove(key)

    return (totalKeys, commonKeys)

def changeIds():
    # changes ids from "idx" form to "x" form

    for entry in e.entries:
        id = e.entries[entry]["id"]
        if id.find("id") != -1:
            id = id.replace("id", "")
            id = str(int(id) + 63)
            e.entries[entry]["id"] = id
        

def matchRecipeIds():
    # matches recipe ids to those in RECIPES (RECIPES is auto-incremented and so they are mismatched)
    id = 619

    es = []
    for entry in e.entries:
        es.append(entry)

    for entry in es:
        e.entries[str(id)] = e.entries.pop(entry)
        id += 1

def printRecipes():
    with open("entries_corrected_ids.txt", "w") as f:
        f.write("entries = {\n")
        for entry in e.entries:
            entry = e.entries[entry]
            id = entry["id"]
            f.write(f"    {id}: " + str(entry) + ", \n")
        # must remove last semicolon
        f.write("}")

if __name__ == "__main__":
    (totalKeys, commonKeys) = findKeys()
    # conclusion: all entries have the same structure
    # printKeys()

    changeIds()
    # ids are NOT consecutive, they go up to 600 but are only 500

    # populateRecipes()

    matchRecipeIds()

    printRecipes()



    

