import time

def print_pause(string):
    print(string)
    time.sleep(2)

def intro():
    print_pause("You have just arrived at your new job!")
    print_pause("You are in the elevator.")

items = []

def choose_floor():
    while True:
        choice = input("""Please enter the number for the floor you would like to visit:
    1. Lobby
    2. Human resources
    3. Engineering department\n""")
        if "1" in choice:
            print_pause("You push the button for the first floor.")
            print_pause("After a few moments, you find yourself in the lobby.")
            if "ID card" in items:
                print_pause("The clerk greets you, but she has already given you your ID card, so there is nothing more to do here now.")
            else:
                items.append("ID card")
                print_pause("The clerk greets you and gives you your ID card.")
            break
        elif "2" in choice:
            print_pause("You push the button for the second floor.")
            print_pause("After a few moments, you find yourself in the human resources department.")
            if "Handbook" in items:
                print_pause("The HR folks are busy at their desks. "
                "There doesn't seem to be much to do here.")
            else:
                print_pause("The head of HR greets you.")
                if "ID card" in items:
                    items.append("Handbook")
                    print_pause("He looks at your ID card and then gives you a copy of the employee handbook.")
                else:
                    print_pause("He has something for you, but says he can't "
                    "give it to you until you go get your ID card.")
            break
        elif "3" in choice:
            print_pause("You push the button for the third floor.")
            print_pause("After a few moments, you find yourself in the engineering department.")
            if "ID card" in items:
                print_pause("You use your ID card to open the door. "
                "Your program manager greets you and tells you that you need to have a copy of the "
                "employee handbook in order to start work.")
                if "Handbook" in items:
                    print_pause("Fortunately, you got that from HR! "
                    "Congratulatons! You are ready to start your new job as vice president of engineering!")
                else:
                    print_pause("They scowl when they see that you don't have it, and send you back to the elevator.")
            else:
                print_pause("Unfortunately, the door is locked and you can't get in. "
                "It looks like you need some kind of key card to open the door. "
                "You head back to the elevator.")
            break
        else:
            print_pause("I don't understand the selection.")
    print_pause("Where would you like to go next?")
    choose_floor()

def elevator():
    intro()
    choose_floor()

elevator()