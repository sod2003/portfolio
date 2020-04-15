# Datetime Module 1
from datetime import datetime

now = datetime.now()

print('Date:', now.date())

print('Year:', now.year)

print('Month:', now.month)

print('Hour:', now.hour)

print('Minute:', now.minute)

print('Second:', now.second)

print('Time:', now.time())

print(now.strftime('%a %A %d')) # %a abbreviated day of the week, %A full day of the week, %d day of the month

print(now.strftime('%b %B %m')) # %b abbreviated month, %B full name of month, %m numbered month of the year

print(now.strftime('%H %M %S %p')) # %H hours, %M minutes, %S seconds, %p for AM or PM

print(now.strftime('%y %Y')) # %y 2 digit year, %Y 4 digit year