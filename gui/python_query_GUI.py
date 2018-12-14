import pymysql
from tkinter import *
from tkinter.messagebox import *
from tkinter.simpledialog import askstring , askinteger
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
            "Enter Query, Click excecute to see result")
        self.master.geometry("600x600")
        self.master.after(100)
        
        top=Frame(self)
        bottom=Frame(self)
        top.pack(side=TOP)
        bottom.pack(side=BOTTOM)

        

        #adding Label
        Z=Label(self, text="Python GUI for DB Query",bg='blue',fg='white')
        Z.pack(in_=top)

        Z=Label(self, text="Choose a query to excecute",bg='orange',fg='white').pack()
        def print0():
            self.query.setvalue()
        def print1():
            print("Hello India")
        def print2():
            print("")

        #checkboxes for query
        probl=IntVar()
        check_box1=Radiobutton (self, text=" Find all customers who have only one account at a specific branch",command= print0,value = 1,variable=probl)
        check_box1.pack(anchor = W)
        check_box2=Radiobutton (self, text="Find all customers who have an account at the bank, but do not have any loan",value=2,variable=probl,command = print1)
        check_box2.pack(anchor = W)
        check_box3=Radiobutton (self, text="Find maximum, minimum, average and total balance of a specific customer.",value=3,variable=probl,command = print1)
        check_box3.pack(anchor = W)
        check_box4=Radiobutton (self, text="Find the details of the customer having loan in a specific bank.",value=4,variable=probl,command = print1)
        check_box4.pack(anchor = W)
        check_box5=Radiobutton (self, text=" Find the banks not having any branch at a specific location.",value=5,variable=probl,command = print1)
        check_box5.pack(anchor = W)
        #button to submit query
        self.submit=Button(self, text = "1.Find all customers who have only one account at a specific branch",bg='orange',fg="black",height=1,
                             command = self.submitQuery)
        self.submit.pack(in_=top,fill = X,side = LEFT)

    ##  scrolled text pane for query string
        
        self.query = Pmw.ScrolledText(self, text_height = 6)
        self.query.pack(fill = X)
        self.query.component('text').config(background='green',foreground='white')

        #button to submit query
        A=Button(self, text = "Submit Query",bg='orange',fg="black",width=40,height=1,
                             command = self.submitQuery)
        self.submit = A
        A.config(relief=SUNKEN)
        self.submit.pack(in_=bottom,fill = X,side = LEFT)

        #button to cancel
        B=self.submit = Button(self, text = "RESET",bg='blue',fg="white",width=40,height=1,
                             command = self.cancel)
        B.config(relief=RAISED)
        self.submit.pack(in_=bottom,fill = X,side = LEFT)

        # Frame to display query results
        self.frame = Pmw.ScrolledFrame(self,
                                       hscrollmode="static",vscrollmode="static")
        self.frame.pack(expand = YES, fill = BOTH)
        self.panes = Pmw.PanedWidget(self.frame.interior(),
                                     orient = "vertical")
        self.panes.pack(expand = YES, fill = BOTH)
        
        
    def submitQuery(self):
        """Execute user entered Query"""
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
                                    orient = "horizontal")
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

    def cancel(self):
        self.query.clear()
        

def main():
    QueryWindow().mainloop()

main()
