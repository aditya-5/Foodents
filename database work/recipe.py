from nutrition import Nutrition
from text_override import Text
from time_override import Time

class Recipe:
    id = 0
    tags = []
    ingredients = []

    def __init__(self, id):
        self.id = id
        self.time = Time()
        self.text = Text()
        self.nutrition = Nutrition()

    def addTag(self, t):
        self.tags.append(t)

    def addIngredient(self, i):
        self.ingredients.append(i)

    def setName(self, s):
        self.name = s

    def setSource(self, s):
        self.source = s

    def setPrepTime(self, t):
        self.time.setPrepTime(t)

    def setWaitTime(self, t):
        self.time.setWaitTime(t)

    def setCookTime(self, t):
        self.time.setCookTime(t)

    def setInstructions(self, s):
        self.text.setInstructions(s)

    def setComments(self, s):
        self.text.setComments(s)

    def setCalories(self, x):
        self.nutrition.calories = x

    def setFat(self, x):
        self.nutrition.fat = x

    def setSatfat(self, x):
        self.nutrition.satfat = x

    def setFiber(self, x):
        self.nutrition.fiber = x

    def setSugar(self, x):
        self.nutrition.sugar = x

    def setProtein(self, x):
        self.nutrition.protein = x





