



doubler = lambda n: n * 2

print(doubler(8)) # 16
print(doubler(-4)) # -8
print(doubler('banana'))# bananabanana


tripler = lambda n : n * 3
print(tripler(8)) # 24
print(tripler(-4)) # -12
print(tripler('banana'))# bananabananabanana


def multiplier(upNumber):
    return lambda x:x * upNumber
    

quadrupler = multiplier(4)
quintupler = multiplier(5)
sextupler  = multiplier(6)
septupler  = multiplier(7)
octupler   = multiplier(8)
nonupler   = multiplier(9)
decupler   = multiplier(10)

tuplerList = [quadrupler,quintupler,sextupler,septupler,nonupler,decupler]

for i in tuplerList:
    print(i(5)) # I overcomplicated this for a like 5 minutes, 
                # threw my hands up when it worked
