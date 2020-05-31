from csv import DictReader
import re
from datetime import datetime

def main():

    # Loading data from files
    datetime_list, barpress_list = [], []
    datetime_re = re.compile(r'[\d]{2,4}') # Strips out consecutive digits of 2 through 4 in length
    for year in range(2012, 2016):
        fname = 'resources\\Environmental_Data_Deep_Moor_{0}.txt'.format(year)
        print('Loading {0}'.format(fname))
        for row in DictReader(open(fname,'r'),delimiter='\t'):
                barpress_list.append(float(row['Barometric_Press']))
                datetime_list.append(datetime(*list(map(int, datetime_re.findall(row['date       time    '])))))

        print('Printing data')
        for row in range(len(barpress_list)):
            print(barpress_list[row], datetime_list[row])

if __name__ == '__main__': main()