# Itertools Module 2
import itertools

# Permutations
election = {1: "Sean", 2: "Jason", 3: "Chuck"}
for p in itertools.permutations(election.values()):
    print(p)

# Combinations
colors = ["Red", "Blue", "Yellow", "Green", "Orange", "Purple"]
for c in itertools.combinations(colors, 3):
    print(c)