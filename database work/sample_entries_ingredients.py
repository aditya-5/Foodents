from entries import Entries as e

for i in ["2", "10", "11", "14", "15","16"]:
    entry = e.entries[i]
    print(entry["name"])
    for ingredient in entry["ingredients"]:
        print("    " + ingredient)
    print("\n\n")