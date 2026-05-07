# idiots = "blake, luis, daniel, alexus" # idiots chosen with no hate in my heart
# idiotsList = idiots.split(", ") # space default split
# print(idiotsList[0,2]) # why wont this work - some weird thing was causing syntax errors, somehow a second instance was running in the same window 
# print(idiotsList[0], idiotsList[2]) 
# name = "blake collins" 

# print(name[0:5])
# print(name[6:15])
# print(name[-7:])





# was following along in class above


#movie list
favMovies =  ["Dune 2", "The Gentlemen", "The Hitchhiker's Guide to the Galaxy", "Dune"]

print(f"the list favMovies includes my top {len(favMovies)} favorite movies.")
print(favMovies)

print(sorted(favMovies))
print(favMovies)

# one is sorted alphabetically 

favMovies.sort()
print(favMovies)

# also sorted alphabetically

favMovies.append("Everything Everywhere All At Once")
print(favMovies)

# maybe I will ask the group members tomorrow

favMovies.append("He Never Died")
print(sorted(favMovies))

