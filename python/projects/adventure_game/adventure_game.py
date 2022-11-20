import time
import random

def print_pause(string):
    print(string)
    time.sleep(2)

def find_villain():
    villains = ['dragon', 'goblin', 'pirate', 'eenie, meenie fairy']
    return random.choice(villains)

def setup_adventure(adventurer):
    villain = adventurer['villain']
    if villain == 'dragon':
        adventurer['setting'] = 'Mountain of Menace'
        adventurer['option 1'] = 'Crag of Carnage'
        adventurer['option 2'] = 'Stone of Strength'
    elif villain == 'goblin':
        adventurer['setting'] = "Underground of Unease"
        adventurer['option 1'] = 'Dungeon of Doom'
        adventurer['option 2'] = 'Chamber of Charisma'
    elif villain == 'pirate':
        adventurer['setting'] = 'Port of Piracy'
        adventurer['option 1'] = 'The Chum Bucket'
        adventurer['option 2'] = 'The Krusty Krab'
    elif villain == 'eenie, meenie fairy':
        adventurer['setting'] = 'Forest of the Forgotten'
        adventurer['option 1'] = 'Meadow of Misfortune'
        adventurer['option 2'] = 'Glade of Glamours'
    adventurer['weapon'] = None
    return adventurer

def intro():
    print_pause('It is a new dawn in Adventurer city, where everyday a villain needs vanguishing and a hero can find their calling.')
    print_pause('You are approached by the city guard.')
    adventurer = {}
    name = input("Hello, adventurer! What is your name?\n")
    adventurer['name'] = name
    adventurer['villain'] = find_villain()
    adventurer = setup_adventure(adventurer)
    print_pause(f"Ahh, {adventurer['name']}, I've heard of you! The great {adventurer['villain']} hunter!")
    print_pause(f"We need your help with a {adventurer['villain']} at the {adventurer['setting']}!")
    print_pause('Nodding your head, you set out to help the city in need.')
    return adventurer

def option1(adventurer):
    print_pause(f"You step forth in the {adventurer['option 1']} and immediately recognize the {adventurer['villain']}. And yet they see you too!")
    if adventurer['weapon'] == None:
        print_pause(f"The {adventurer['villain']} immediately pounces upon you! Your equipment not being effective against it.")
        print_pause("Perhaps you should have explored the area with a more pleasant name first?")
        end_game()
    else:
        print_pause(f"Before the {adventurer['villain']} could make a move, you pull out your {adventurer['weapon']} and slay them where they stand.")
        print_pause("Congratulations, Hero! You have defeated your hated villain!")
        end_game()

def option2(adventurer):
    print_pause(f"You arrive at the {adventurer['option 2']}, a feeling of safety and calm surrounds you.")
    if adventurer['weapon'] == None:
        print_pause("Before you hums a weapon of great power. You reach forth to claim it.")
        if adventurer['villain'] == 'dragon':
            adventurer['weapon'] = 'Sword of Dragonslaying'
            print_pause(f"You pull a {adventurer['weapon']} from the {adventurer['option 2']}.")
        elif adventurer['villain'] == 'goblin':
            adventurer['weapon'] = 'Hammer of Goblinsmashing'
            print_pause(f"You pickup the {adventurer['weapon']}, knowing your foes will get crushed under its weight.")
        elif adventurer['villain'] == 'pirate':
            adventurer['weapon'] = 'krabby pattie'
            print_pause(f"You pickup a {adventurer['weapon']} order, knowing no pirate can resist the taste or smell.")
        elif adventurer['villain'] == 'eenie, meenie fairy':
            adventurer['weapon'] = 'Fairy-Swatter'
            print_pause(f"You pickup the {adventurer['weapon']}, alleviating any fear of confronting an {adventurer['villain']}.")
        print_pause("You feel empowered enough to defeat your foe.")
    else:
        print_pause(f"You've already obtained the {adventurer['weapon']}. You sense there is nothing more for you to do here.")
    print_pause(f"You return to the {adventurer['setting']}.")
    choice(adventurer)

def choice(adventurer):
    print_pause("Before you lies two paths:")
    choice = input(f""""
    1. {adventurer['option 1']}
    2. {adventurer['option 2']}
    """)
    if '1' in choice:
        option1(adventurer)
    elif '2' in choice:
        option2(adventurer)
    else:
        print_pause("Not a valid choice. Try again.")
        adventure_forth(adventurer)

def adventure_forth(adventurer):
    print_pause(f"After some time for travel, you've arrived at the {adventurer['setting']}.")
    print_pause(f"The eerie sensation of danger sends a chill down your spine. You can sense the {adventurer['villain']} is close.")
    choice(adventurer)

def farewell():
    print("Thanks for playing!")

def end_game():
    play_again = input("Would you like to play again? 'Yes' or 'No'\n").lower()
    if play_again == 'yes':
        adventure_game()
    if play_again == 'no':
        farewell()
    else:
        print_pause("Invalid. Try Again.")
        end_game()

def adventure_game():
    adventurer = intro()
    adventure_forth(adventurer)

adventure_game()