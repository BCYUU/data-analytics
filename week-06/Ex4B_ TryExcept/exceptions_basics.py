try:#value error
    # no letters and something about base errors Ive gotten before
    value = int('a')
except ValueError as e:
    print(f"ValueError: {e}")
else:
    print(f"result: {value}")
finally:
    print("Let's try another one\n")

try:#name error
    result = undefined_variable # usually you just indented wrong or literally didnt define it or maybe you misremembered how you put it in
except NameError as e:
    print(f"NameError caught: {e}")
else:
    print(f"result: {result}")
finally:
    print("Let's try another one\n")

try:# type error
    result = "2" + 2 # that number isnt a number.... 
except TypeError as e:
    print(f"TypeError caught: {e}")
else:
    print(f"Result: {result}")
finally:
    print("Let's try another one\n")

try:
    # missing colon after if
    eval("if True print('hello')")
    # eval expects an expression
   
except SyntaxError as e:
    print(f"SyntaxError caught: {e}")
else:
    print("No syntax error occurred")  #won't run
finally:
    print("Let's try another one\n")