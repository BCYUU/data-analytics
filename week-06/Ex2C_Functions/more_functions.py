





def disMailList(name, address, city, state, zip):
    print(f"{name}")
    print(f"{address}")
    print(f"{city}, {state} {zip}\n")
    

def addNumbers(*args):
    equation = " + ".join(str(num) for num in args)
    total = sum(args)
    print(f"{equation} = {total}\n")

def disReceipt(totalDue, amountPaid):
    print(f"total due: {totalDue:.2f}")
    print(f"amount paid: {amountPaid:.2f}")
    if amountPaid >= totalDue:
        change = amountPaid -totalDue
        print(f"change owed: {change:.2f}\n")
    else:
        remaining = totalDue - amountPaid
        print(f"remaining balance: {remaining:.2f}\n")

disMailList (1,2,3,4,5)
disMailList ("joe", " 123123213 streetguy", "homertown", "IL", "45678")

addNumbers(1)
addNumbers(1,2)
addNumbers(1,1,1,1,3,1,1)
# wow

disReceipt(50, 60)
disReceipt(50,50)
disReceipt(50,40)

# print(disMailList(1,2,3,4,5))

# print(addNumbers(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1))
# print(disReceipt(50, 60))

# what the hell did I do to get none back on those lines - - it was becuase I didnt call them I printed them