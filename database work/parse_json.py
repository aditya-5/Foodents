# I could not find a suitable online JSON to CSV parser (or to any other format, really), 
# so I'm doing it manually

from recipe import Recipe
from entries import Entries as e

def printKeys():

    print("Total keys in DB: ", totalKeys)
    print("Keys common to all entries: ", commonKeys)
    print("Inconsistent keys: ", [k for k in totalKeys if k not in commonKeys])

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



    

