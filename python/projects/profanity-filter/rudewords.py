rude_words = ["crap", "darn", "heck", "jerk", "idiot", "butt", "devil"]

with open("my_story.txt") as myfile:
    contents = myfile.read()
    rude_count = 0
    for rude in rude_words:
        if rude in contents:
            rude_count += 1
            print(f"Found rude word: {rude}")
if rude_count == 0:
    print("Congratulations, your file has no rude words.")
    print("At least, no rude words I know.")