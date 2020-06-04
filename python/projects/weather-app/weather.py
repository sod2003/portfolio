from csv import DictReader
import re
from datetime import datetime
from tkinter import *
from tkinter import ttk, messagebox

import numpy as np
import matplotlib
from matplotlib.dates import date2num, num2date
from matplotlib.figure import Figure
from matplotlib.backends.backend_tkagg import (
    FigureCanvasTkAgg, NavigationToolbar2TkAgg)

def main():

    # Loading data from files
    datetime_list, barpress_list = [], []
    datetime_re = re.compile(r'[\d]{2,4}') # Strips out consecutive digits of 2 through 4 in length
    for year in range(2012, 2016):
        fname = 'resources\\Environmental_Data_Deep_Moor_{0}.txt'.format(year)
        print('Loading {0}'.format(fname))
        for row in DictReader(open(fname,'r'),delimiter='\t'):
                barpress_list.append(float(row['Barometric_Press']))
                datetime_list.append(date2num(datetime(*list(map(int, datetime_re.findall(row['date       time    ']))))))

        datetime_array = np.array(datetime_list)
        barpress_array = np.array(barpress_list)

        print('Printing data')
        for row in range(5):
            print(barpress_list[row], datetime_list[row])  # Printing the first 5 rows from each year

if __name__ == '__main__': main()