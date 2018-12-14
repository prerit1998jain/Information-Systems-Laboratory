import pymysql
from tkinter import *
from tkinter.messagebox import *
import Pmw

import numpy as np
import random
#import scipy
#import scipy.integrate as integrate
#from scipy.optimize import optimize

import sympy
from sympy import symbols, diff
import matplotlib.pyplot as plt

from numpy.polynomial import polynomial as poly


class QueryWindow(Frame):
    """GUI DB Query Frame"""

    def __init__(self):
        """QueryWindow constructor"""

        Frame.__init__(self)
        Pmw.initialise()
        self.pack(expand = YES, fill = BOTH)
        self.master.title(\
            "Enter Query, Click submit to see results.")
        self.master.geometry("600x600")
        top = Frame(self)
        bottem = Frame(self)
        top.pack(side=TOP)
        bottem.pack(side=BOTTOM)
        
        # scrolled text pane for query string
        self.query = Pmw.ScrolledText(self, text_height = 2)
        self.query.pack(in_ = top,fill = X )

        #button to submit query
        self.submit = Button(self, text = "Submit Query",
                             command = self.submitQuery)
        self.submit.pack(in_= top,fill = X,side = LEFT)

        #button to cancel querry
        self.cancel = Button(self, text = "Cancel Query",
                             command = self.cancelquery)
        self.cancel.pack(in_= top ,fill = X,side = LEFT)
 
        # Frame to display query results
        self.frame = Pmw.ScrolledFrame(self,
                                       hscrollmode="static",vscrollmode="static")
        self.frame.pack(expand = YES, fill = BOTH)

        self.panes = Pmw.PanedWidget(self.frame.interior(),
                                     orient = "vertical")
        self.panes.pack(in_=top,expand = YES, fill = BOTH)
        
    def submitQuery(self):
        """Execute user enterd Query"""
        #open connection, retrieve cursor and execute query

        try:
            connection = pymysql.connect(host='localhost', user='root',
                                         password='user', db='bank',
                                         charset='utf8mb4',
                                         cursorclass=pymysql.cursors.DictCursor)

            cursor = connection.cursor()
            cursor.execute(self.query.get())
        except (pymysql.OperationalError):
            errorMessage = "Error"
            showerror("Error", errorMessage)
            return

        else:   #obtain user requested info
            data = cursor.fetchall()
            fields = cursor.description
            cursor.close()
            connection.close()

        # clear results of last query
        self.panes.destroy()
        self.panes = Pmw.PanedWidget(self.frame.interior(),
                                    orient = "vertical")
        self.panes.pack(expand = YES, fill = BOTH)

        # create panel and label for each field
        for item in fields:
##            print(item)
            self.panes.add(item[0])
            label = Label(self.panes.pane(item[0]),
                          text = item[0], relief = RAISED)
            label.pack(fill = X)

        # enter results into panes using labels
        for entry in data:

            for i in range(len(entry)):
##                print(entry)
                label = Label(self.panes.pane(fields[i][0]),
                              text = entry[fields[i][0]], anchor = W, 
                              relief = GROOVE, bg = "white")
                label.pack(fill = X)

            self.panes.setnaturalsize()

##        c= np.random.randint(0,20,size=7)
##        p1 = np.poly1d(c)
##        pint = np.poly1d(np.polyint(c))
##
##        fig1 = plt.figure()
##        fig2 = plt.figure()
##        ax1 = fig1.add_subplot(111)
##        ax2 = fig2.add_subplot(111)
##
##        x = np.arange(-100, 100, 0.1)
##        ax1.plot(x,p1(x))
##        ax2.plot(x, pint(x))
##        ##ax1.plot(x,pdiff(x))
##        plt.show()
##
##        messagebox.showinfo("Hello", str(p1))
    def cancelquery(self):
        self.query.clear()

def main():
    QueryWindow().mainloop()

main()
