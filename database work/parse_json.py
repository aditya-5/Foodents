# I could not find a suitable online JSON to CSV parser (or to any other format, really), 
# so I'm doing it manually

from recipe import Recipe
from entries import Entries as e
from random import choice, randint

def printKeys():

    print("Total keys in DB: ", totalKeys)
    print("Keys common to all entries: ", commonKeys)
    print("Inconsistent keys: ", [k for k in totalKeys if k not in commonKeys])

def populateRecipes():
    # ['id', 'name', 'source', 'preptime', 'waittime', 'cooktime', 'servings', 
    # 'comments', 'calories', 'fat', 'satfat', 'carbs', 'fiber', 'sugar', 'protein', 
    # 'instructions', 'ingredients', 'tags']

    # user_id, date_created, servings, instructions, story, time, difficulty

    userIds = [1, 9, 10]

    user_id = choice(userIds)
    date_created = "2021-03-03"
    servings = e.entries["2"]["servings"]
    instructions = e.entries["2"]["instructions"]
    story = e.entries["2"]["comments"]
    time = e.entries["2"]["preptime"] + e.entries["2"]["waittime"] + e.entries["2"]["cooktime"]
    difficulty = randint(1, 4)

    sql = f"INSERT INTO RECIPES (user_id, date_created, servings, instructions, story, time, difficulty) VALUES ({user_id}, '{date_created}', {servings}, '{instructions}', '{story}', {time}, {difficulty})"

    with open("sql_insert.txt", "w") as f:
        for entry in e.entries:
            
        f.write(sql)

def findKeys():
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

if __name__ == "__main__":
    (totalKeys, commonKeys) = findKeys()

    # conclusion: all entries have the same structure
    # printKeys()

    populateRecipes()



    

