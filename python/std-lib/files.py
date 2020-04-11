# Files and File Writing
# scores.txt is the companion file

# Open a File
myFile = open("scores.txt", "w")

# w --> write
# r --> read
# r+ --> read amd write
# a --> append
# Show attributes and properties of a file
print("Name", myFile.name)
print("Mode", myFile.mode)

# Write to a file
myFile.write("SOD: 100\nGWB: 99\nJRL: 89")
myFile.close()

# Read the file
myFile = open("scores.txt.", "r")
print("Reading...", myFile.read())