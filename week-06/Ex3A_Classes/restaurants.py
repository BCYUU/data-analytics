class Restaurant:
# describes a restaurant
    def __init__(self, restName, foodType):
        self.restName = restName
        self.foodType = foodType
        pass

    def describeRest(self):
        print(f"{self.restName} serves {self.foodType}.")
 # description
    def restOpen(self):
        print(f"{self.restName} is open")
# open message

restaurant1 = Restaurant("WEaks'S", "BURGER KIRG - Back at again with the HEEEEELP HELP MEEEEEEE AAAAAAAAAAAAAAAAAAAAAAGh")
restaurant2 = Restaurant("Totrous ", "msdaasdasdasdklmasdmklasdkma")
restaurant3 = Restaurant("Dont' DUNNTS", "AMURICAA AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA")

# Call methods for each restaurant
restaurant1.describeRest()
restaurant1.restOpen()

restaurant2.describeRest()
restaurant2.restOpen()

restaurant3.describeRest()
restaurant3.restOpen()
