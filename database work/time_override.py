class Time:
    def __init__(self):
        self.prepTime = 0
        self.waitTime = 0
        self.cookTime = 0

    def setPrepTime(self, t):
        self.prepTime = t

    def setWaitTime(self, t):
        self.waitTime = t

    def setCookTime(self, t):
        self.cookTime = t