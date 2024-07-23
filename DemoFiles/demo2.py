while True:
    name = input("Enter your name: ")
    age = input("Enter your age: ")

    if age.isdigit():
        age = int(age)
        print(f"Hello, {name}! You are {age} years old.")
    else:
        print("Please enter a valid age.")
    
    response = input("Would you like to try again? (yes/no): ").strip().lower()
    
    if response != 'yes':
        print("Exiting the program.")
        break
    