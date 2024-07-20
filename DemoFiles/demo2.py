name = input("Enter your name: ")
age = input("Enter your age: ")

if age.isdigit():
    age = int(age)
    print(f"Hello, {name}! You are {age} years old.")
else:
    print("Please enter a valid age.")