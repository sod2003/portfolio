# Datetime Module 2
from datetime import datetime, timedelta
import calendar

now = datetime.now()

testDate = now + timedelta(days=2)
myFirstCourse = now - timedelta(weeks=3)
print('Test Date:', testDate.date())
print('Course Date:', myFirstCourse.date())

if testDate > myFirstCourse:
    print('Test Date is later than Course Date')

cal = calendar.month(2001, 10)
print(cal)

cal2 = calendar.weekday(2001, 10, 11)
print(cal2)

print('Is 2020 a leap year?', calendar.isleap(2020))