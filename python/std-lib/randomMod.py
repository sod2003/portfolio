# Random Module
import random

# Random Numbers
print(random.random())
decide = random.randrange(2)
if decide == 0:
    print("HEADS")
else:
    print("TAILS")
print(decide)
print("You rolled a", random.randrange(1, 7))

# Random Choices
lotteryWinners = random.sample(range(100), 5)
print("Random 5 lottery winners:", lotteryWinners)
possiblePets = ["cat", "dog", "bird"]
print("Randomly selected pet:", random.choice(possiblePets))
cards = ["Jack", "Queen", "King", "Ace"]
random.shuffle(cards)
print("Shuffled cards:", cards)