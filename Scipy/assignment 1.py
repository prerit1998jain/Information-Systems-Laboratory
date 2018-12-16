# Menu program Polynomials

import math
import sys
import scipy
import scipy.integrate as int1
from sympy import *
x=Symbol('x')
from random import randint
import matplotlib.pyplot as plt
import numpy as np

n=int(input("Enter the degree of the polynomial: "))
co=[]
for i in range(n+1):
    co.append(randint(-10,10))
print("Enter your option:\n 1.Polynomial and array of coefficients \n2.Differential of Polynomial \n3.Integral of Polynomial")
print(" 4.Plot the polynomial and the integral of the polynomial in range[-100,100]")
print(" 5.Area under of the curve for [-50,50]")
try:
    ch=int(input())
except:
    print("Invalid Choice...Quitting.")
    sys.exit(0)
if ch<0 or ch>5:
    print("Invalid Choice...Quitting.")
    sys.exit(0)
if ch==1:
    print("Array of Co-efficients: ")
    print(co)
    for i in range(n+1):
        if(co[i]<0 or i==0):
            sys.stdout.write(str(co[i])+"x^"+str(i)+" ")
        else:
            sys.stdout.write("+"+str(co[i])+"x^"+str(i)+" ")
poly=co[0]
for i in range(1,n+1):
    poly=poly+(co[i]*(x**i))
arg=tuple(co)
def func(y,*ar):
    poly=ar[0]
    for i in range(1,n+1):
        poly=poly+(ar[i]*(y**i))
    return poly


if ch==2:
    for i in range(n+1):
        if(co[i]<0 or i==0):
            sys.stdout.write(str(co[i])+"x^"+str(i)+" ")
        else:
            sys.stdout.write("+"+str(co[i])+"x^"+str(i)+" ")
    print("Differential: ")
    polyprime=poly.diff(x)
    print(polyprime)
if ch==5:
    for i in range(n+1):
        if(co[i]<0 or i==0):
            sys.stdout.write(str(co[i])+"x^"+str(i)+" ")
        else:
            sys.stdout.write("+"+str(co[i])+"x^"+str(i)+" ")
    print("Area under curve for [-50,50]: ")
    res=int1.quad(func,-50.0,50.0,args=arg)
    print(res)
if ch==3:
    for i in range(n+1):
        if(co[i]<0 or i==0):
            sys.stdout.write(str(co[i])+"x^"+str(i)+" ")
        else:
            sys.stdout.write("+"+str(co[i])+"x^"+str(i)+" ")
    print("Integral: ")
    for i in range(n+1):
        if(co[i]<0 or i==0):
            sys.stdout.write(str(co[i]/float(i+1))+"x^"+str(i+1)+" ")
        else:
            sys.stdout.write("+"+str(co[i]/float(i+1))+"x^"+str(i+1)+" ")
if ch==4:
    for i in range(n+1):
        if(co[i]<0 or i==0):
            sys.stdout.write(str(co[i])+"x^"+str(i)+" ")
        else:
            sys.stdout.write("+"+str(co[i])+"x^"+str(i)+" ")
    X = np.arange(-100,100,0.01)
    c=co[-1::-1]
    p=np.poly1d(c)
    y=p(X)
    plt.figure().suptitle('The Randomly generated polynomial is', fontsize=12, fontweight='bold')
    plt.plot(X,y)
    plt.xlabel("x")
    plt.ylabel("y=P(x)")
    plt.show()
    co1=[]
    co1.append(co[0])
    for i in range(1,n+1):
        co1.append((float(co[i]))/(i+1))
    c1=co1[-1::-1]
    c1.append(randint(-10,10))
    p1=np.poly1d(c1)
    y1=p1(X)
    plt.figure().suptitle('Integral of the polynomial', fontsize=12, fontweight='bold')
    plt.plot(X,y1)
    plt.xlabel("x")
    plt.ylabel("P1(x)")
    plt.show()
