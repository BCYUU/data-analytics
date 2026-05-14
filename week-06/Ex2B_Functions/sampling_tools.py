#why wont import random work
# ok now it works after I closed the terminal for the fourth time

import random

products = ['Laptop', 'Monitor', 'Keyboard', 'Mouse', 'Webcam',
'Headset', 'Docking Station', 'USB Hub', 'Desk Lamp', 'Surge Protector']

print(f"The item of the day is {random.choice(products)}")

print(f"samle list is{random.sample(products,3)}") # works as long as I get rid of the import error
random.shuffle(products)
print(f"here list{products}")

print(f"total transaction count for the day {random.randint(50,300)}")