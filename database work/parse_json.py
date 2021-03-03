# I could not find a suitable online JSON to CSV parser (or to any other format, really), 
# so I'm doing it manually

import re
from recipe import Recipe

def parseRecipeText(r, recipeText):
    i = 0
    while i < len(recipeText):
        if recipeText[i] == "\"ingredients\": [": 
            while(recipeText[i] != "],"):
                print(recipeText[i])
                i += 1
        elif recipeText[i] == "\"tags\": [": 
            while(recipeText[i] != "]"):
                print(recipeText[i])
                i += 1
        else:
            addParameter(r, recipeText[i])
        i += 1
        # else:
        #     print(recipeText[i])
        # if recipeText[i] == "\"ingredients\": [":
        #     while(recipeText[i] != "],"):
        #         i += 1
        # elif recipeText[i] == "\"tags\": [":
        #     while(recipeText[i] != "]"):
        #         i += 1
        # else:
        #     addParameter(r, recipeText[i])

    return r

def addParameter(r, line):
    name = ""
    i = 1
    print(line)
    while line[i] != "\"":
        name += line[i]
        i += 1
    print(name)

recipes = []

with open("db_test.json", "r") as f:
    line = 1
    while line:
        line = f.readline().strip()

        regex = "^\"(id)?\d{1,3}\": \{$"
        found = re.search(regex, line)
        if found:
            regex = "(id)?\d{1,3}"
            found = re.search(regex, line)
            r = Recipe(found[0])

            recipeText = []

            line = f.readline().strip()
            while line != "}" and line != "},":
                recipeText.append(line)
                line = f.readline().strip()

            recipes.append(parseRecipeText(r, recipeText))

print()
for r in recipes:
    print(r.id, end=" ")