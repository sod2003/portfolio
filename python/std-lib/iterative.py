# Iterative Files
myFile = open("scores.txt.", "r")  # This is meant to run after the files.py script in order to see the functionality

# Read one line at a time
print("First line:", myFile.readline())
myFile.seek(0)  # To reset the pointer to the beginning of the file

# Iterate through each line of a file
for line in myFile:
    newHighScorer = line.replace("GWB", "BOO")
    print(newHighScorer)

myFile.close()