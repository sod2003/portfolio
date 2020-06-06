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
    FigureCanvasTkAgg, NavigationToolbar2Tk)

class WeatherStatistics:

    def __init__(self, master):

        # Loading data from files
        datetime_list, barpress_list = [], []
        datetime_re = re.compile(r'[\d]{2,4}') # Strips out consecutive digits of 2 through 4 in length
        for year in range(2012, 2016):
            fname = 'resources\\Environmental_Data_Deep_Moor_{0}.txt'.format(year)
            print('Loading {0}'.format(fname))
            for row in DictReader(open(fname,'r'),delimiter='\t'):
                    barpress_list.append(float(row['Barometric_Press']))
                    datetime_list.append(date2num(datetime(*list(map(int, datetime_re.findall(row['date       time    ']))))))

            self.datetime_array = np.array(datetime_list)
            self.barpress_array = np.array(barpress_list)

            # print('Printing data')
            # for row in range(5):
            #     print(barpress_list[row], datetime_list[row])  # Printing the first 5 rows from each year

            # Build the GUI
            master.title('Weather Statistics')
            master.resizable(True, True)
            master.state('zoomed')

            matplotlib.rc('font', size=18)
            f = Figure()
            f.set_facecolor((0,0,0,0))
            self.a = f.add_subplot(111)
            self.canvas = FigureCanvasTkAgg(f, master)
            self.canvas.draw()
            toolbar_frame = ttk.Frame(master) # Puts NavBar above plot
            toolbar = NavigationToolbar2Tk(self.canvas, toolbar_frame)
            toolbar.update()
            toolbar_frame.pack(side=TOP, fill=X, expand=0)
            self.canvas._tkcanvas.pack(fill=BOTH, expand=1)

            controls_frame = ttk.Frame(master)
            controls_frame.pack()

            

if __name__ == '__main__': 
    print('Not finished yet')