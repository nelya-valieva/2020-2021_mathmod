# -*- coding: utf-8 -*-
"""
@author: NValieva
"""
import math
import numpy as np
from scipy.integrate import odeint
import matplotlib.pyplot as plot

#начальное расстояние от лодки до катера 
k=17.4
fi=3*math.pi/4

#движение катера береговой охраны 
def dr(r, tetha):
    dr = r/math.sqrt(23.01)
    return dr

#начальные условия в случае 1
#r0 = k/5.9
#tetha = np.arange(0, 2*math.pi, 0.01)
#r = odeint(dr, r0, tetha)

#начальные условия в случае 2
r0 = k/3.9
tetha = np.arange(-math.pi, math.pi, 0.01)
r = odeint(dr, r0, tetha)

#движение лодки браконьеров
def f2(t):
    xt=math.tan(fi)*t
    return xt

t = np.arange(0, 20, 1)

#полярная система координат
r2 = np.sqrt(t*t + f2(t)*f2(t))
tetha2 = (np.tan(f2(t)/t))**-1

#построение графиков
plot.polar(tetha, r, 'g') #охрана
plot.polar(tetha2, r2, 'r') #браконьеры

m = 0
for i in range(len(tetha)):
    if round(tetha[i],2) == round(fi+math.pi,2):
        m=i

print("tetha = " , tetha[m], "and r = ", r[m],[0])
