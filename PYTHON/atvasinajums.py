# -*- coding: utf-8 -*-
import numpy as np
import matplotlib.pyplot as plt

def mans_sinuss(x):
    k = 0
    a = (-1)**0*x**1/(1)
    S = a
    while k<500:
        k = k + 1
        R = (-1) * x**2 / ((2*k)*(2*k+1))
        a = a * R
        S = S + a
    return S


a = 0. #1.57 # pi/2
b = 3 * np.pi #4.71 # 3*pi/2
x = np.arange(a,b,0.05)
y = mans_sinuss(x)
plt.plot(x,y,'go')
plt.grid()
#plt.show()

n = len(x)
y_prim = []
for i in range (n-1):
    #print i, x[i], y[i],
    delta_x = x[i+1]-x[i]
    delta_y = y[i+1]-y[i]
    #y_prim = delta_y/delta_x
    #print y_prim
    y_prim.append(delta_y/delta_x)
    #print y_prim[i]

plt.plot(x[:n-1],y_prim, 'rv')
#plt.show()

y_2prim = []
for i in range(n-2):
    delta_y_prim = y_prim[i+1] - y_prim[i]
    delta_x_prim = x[i+1]-x[i]
    y_2prim.append(delta_y_prim/delta_x)
plt.plot(x[:n-2],y_2prim, 'b*')
plt.show()
