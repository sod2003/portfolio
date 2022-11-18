import time

def print_pause(string):
    print(string)
    time.sleep(2)

def prompt(string, option1, option2):
    while True:
        order = input(string).lower()
        if option1 in order:
            return option1
        elif option2 in order:
            return option2
        else:
            print_pause("Sorry, I don't understand.")

def intro():
    print_pause("Hello! I am Bob, the Breakfast Bot.")
    print_pause("Today we have two breakfasts available.")
    print_pause("The first is waffles with strawberries and whipped cream.")
    print_pause("The second is sweet potato pancakes with butter and syrup.")

def get_order():
    order = prompt("Please place your order. Would you like waffles or pancakes?\n", "waffles", "pancakes").capitalize()
    print_pause(f"{order}, it is!")
    print_pause("Your order will be ready shortly.")
    order_again()

def order_again():
    reorder = prompt("Would you like to place another order? Please say 'yes' or 'no'.\n", "yes", "no")
    if 'no' in reorder:
        print_pause("OK, goodbye!")
    elif 'yes' in reorder:
        print_pause("Very good, I'm happy to take another order.")
        get_order()

def order_breakfast():
    intro()
    get_order()

order_breakfast()