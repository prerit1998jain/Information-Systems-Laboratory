# Determining descriptive statistics

from mpl_toolkits.mplot3d import Axes3D
from matplotlib import cm
from matplotlib.ticker import LinearLocator, FormatStrFormatter
import matplotlib.pyplot as plt
import csv
import scipy
import numpy as np
import matplotlib
from scipy import stats
from scipy.optimize import curve_fit


def func(x, a,b,c,d):
     return a*(x**3) + b*(x**2) + c*x +d

Data=[]
with open('SalaryData.csv', 'r') as csvfile:
    read = csv.reader(csvfile, delimiter=',', quotechar='|')
    f=0
    for row in read:
        if f!=0:
            Data.append(row)
        f=f+1
Experience=[]
TExp=[]
Salary=[]
for i in Data:
    Experience.append(int(i[2]))
    TExp.append(int(i[4]))
    Salary.append(int(i[5]))

print("Stats of Experience: ")
print(stats.describe(Experience))

print("Stats of Total Experience: ")
print(stats.describe(TExp))

print("Stats of Salary: ")
print(stats.describe(Salary))

fig=plt.figure()
fig.suptitle('Experience vs Salary', fontsize=12, fontweight='bold')
plt.scatter(Experience,Salary)
Salary=np.array(Salary)
Experience=np.array(Experience)
popt, pcov = curve_fit(func, Experience, Salary)

SSR=(sum((func(Experience,*popt)-Sal)**2)/Experience.size)
print(SSR)

plt.plot(np.unique(Experience), np.poly1d(np.polyfit(Experience, Salary, 2))(np.unique(Experience)))
plt.xlabel("Experience")
plt.ylabel("Salary")
plt.show()
