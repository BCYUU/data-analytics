class Restaurant:
# describes a restaurant
    def __init__(self, restName, foodType):
        self.restName = restName
        self.foodType = foodType
        self.numberServed = 0
        self.cusRatings = []
        pass

    def describeRest(self):
        print(f"{self.restName} serves {self.foodType}.")
 # description
    def restOpen(self):
        print(f"{self.restName} is open")
# open message
# had a really good time forgetting to INDENT the other parts of restaurant, nothing makes
# you feel smarter than forgetting something so obvious


    def addNumServed(self, todayCus):
        self.numberServed += todayCus #swapping to numServed and numberDerved also caused an error # cant even write a comment correctly... sad!
# add customers to total served
    def printNumServed(self):
        print(f"{self.restName} served {self.numberServed} customers")
# shows total number of served
    def cusRating(self):
        while True:
            userInput = input(f"rate {self.restName} (1-5) 5= GREAT: ")
            try:
                rating = int(userInput)
            except ValueError:
                print("invalid try again: just 1-5.")
                continue

            if 1 <=rating <= 5:
                self.cusRatings.append(rating)
                avg = sum(self.cusRatings)/len(self.cusRatings)
                print(f"your rating was {rating}. the average rating for the restaurant is {avg:.2f}")
                break
            else:
                print("rating must be between 1 and 5. try again.")



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


restaurants = [restaurant1, restaurant2, restaurant3]

# test printNumServed
print("initial number served")
for r in restaurants:
    r.printNumServed()

# test addNumServed 
print("\nadding customers served") 
for r in restaurants:
    r.addNumServed(500) # add 500 today
    r.addNumServed(5)  # add 5 another day
    r.printNumServed() # show 505

# test cusRating 
print("\nCustomer ratings")
for r in restaurants:
    print(f"\n{r.restName}")
    # call rating method multiple times; it will re‑prompt on invalid input
    r.cusRating()   # first rating
    r.cusRating()   # second rating
    # average update after each iteration



