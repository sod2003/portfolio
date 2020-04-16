# Creating a timer from the time module
import time

run = input('Start? >')

seconds = 0

if run == 'yes':
    while seconds != 10:
        print('>', seconds)
        time.sleep(1)
        seconds += 1
    print('>', seconds)