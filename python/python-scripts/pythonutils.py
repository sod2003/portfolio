import os
from os import path
import datetime
from datetime import date, time, timedelta
import time
import shutil

def main():
    # Print the name of the OS
    print("This OS is: " + os.name)

    # Check that the git repo's README.md exists locally + two type boolean checks
    print("README.md exists: " + str(path.exists("README.md")))
    print("README.md is a file: " + str(path.isfile("README.md"))) # Should be true
    print("README.md is a directory: " + str(path.isdir("README.md"))) # Should be false

    # Splitting path variables
    print("Path: " + str(path.realpath("README.md")))
    print("Split Name from Path: " + str(path.split(path.realpath("README.md"))))

    # Get modification time - Two options presented
    t = time.ctime(path.getmtime("README.md"))
    print("Option 1: ", t) # Option 1
    print("Option 2: ", datetime.datetime.fromtimestamp(path.getmtime("README.md"))) # Option 2

    # Calculate the modification time
    td = datetime.datetime.now() - datetime.datetime.fromtimestamp(path.getmtime("README.md"))
    print("Last modified: " + str(td) + " from current time.")
    print("Or " + str(td.total_seconds()) + " seconds ago") # Accurate up to 270 years

    # Create, write to, and close a file
    file = open("testfile.txt", "w+")
    file.write("This is a test file for Sean's Python Utility script")
    file.close()

    # Make a copy of the file
    if path.exists("testfile.txt"):
        src = path.realpath("testfile.txt")
        dst = src + ".bak"
        shutil.copy(src, dst) # Only copies the information within the file
        shutil.copystat(src, dst) # Copies permissions, modifications, and other meta data
        # shutil.copy2(src, dst) will do both actions

    # Rename the copy of the file
    os.rename("testfile.txt.bak", "testcopy.txt")

    # Archive the two new files into zip file utilizing a call to the CLI
    os.system("python -m zipfile -c testfile.zip testfile.txt testcopy.txt")
    # Alternatively, I could archive the entire folder by importing make_archive from shutil
    # and call shutil.make_archive("archive", "zip", <base-dir>) within my python script
    # where the <base-dir> is the folder I want to archive

if __name__ == "__main__":
    main()
