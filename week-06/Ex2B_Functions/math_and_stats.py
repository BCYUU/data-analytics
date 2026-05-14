#placeholder since I get an error otherwise



import random
import math
import statistics




vals_1_100 = range(1,100)
vals_sample = random.sample(vals_1_100, 75)
vals_choices = random.choices(vals_1_100, k = 200)
radius = random.randint(3,10)
pi = math.pi


print("#_Experimenting with a subset of integers 1-100:")
S = sum(vals_sample) # makes sense
A = S/len(vals_sample) #sum/by number of values
M = statistics.median(vals_sample) # why isnt this a part of math 

print("Sum of 75 sample values from 1 to 100:", S,"\nAverage of 75 sample values:", A,"\nMedian of 75 sample values:", M)

print("#_Experimenting with a superset of 200 values, integers 1-100:")
A2 = sum(vals_choices)/len(vals_choices) # same thing as the other average but im using the one that makes 200
M2 = statistics.median(vals_choices) #again same as before
MO = statistics.mode(vals_choices) # I hope .mode is real
SD = statistics.stdev(vals_choices) # I would hope this works
V = statistics.variance(vals_choices) # If varience isnt the correct function for calculating variance I am in big trouble

print("Average of 200 values", A2,"\nMedian of 200 values:", M2,
    "\nMode of 200 values:", MO,
    "\nStandard deviation of 200 values:", SD,"\nVariance of 200 values:", V) 

# it took me till now to realize I need to actually make these print into the statements in the sheet
# I was just displaying all the values before...

print("#_Modeling a random circle:")
area = pi * (radius ** 2) # please remember

print(f"radius = {radius}, area = {math.ceil(area)}(rounded up to the nearest integer)")
print(f"radius = {radius}, area = {math.floor(area)}(rounded DOWN to the nearest integer)") #hmmm floor vs ceiling