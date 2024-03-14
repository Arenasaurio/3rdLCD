import math
import matplotlib.pyplot as plt
import numpy as np
from tabulate import tabulate

def f(x): 
    return x + math.cos(x)

a=float(input("Teclea el valor de a:"))
b=float(input("Teclea el valor de b:"))
it=int(input("Iteraciones:"))

#print("f(b)=",f(a)) #para imprimir 
if (f(a)*f(b)<0):
   print("hay raiz")
   tabla=[["a","b","m","f(a)","f(b)","f(m)","ER","ERP"]]
   m_ant=0
   for i in range(1,it):     #iteraciones
     m=(a+b)/2 
     ER=abs(m-m_ant)/m                #m
     ERP=ER*100
     #print(a,b,m,f(a),f(b),f(m))     
     tabla.append([a,b,m,f(a),f(b),f(m),ER,ERP])  
     m_ant=m       
     if(f(a)*f(m)>0):
        a=m 
        b=b
     else:
        b=m
        a=a
   print(tabulate(tabla,headers="firsrow"))     
else:
    print("no hay raiz")
print(m)
x_vals = np.linspace(a,b,100)
y_vals = np.vectorize(f)(x_vals)
plt.plot(y_vals, x_vals, label="x+cos(x)")
plt.axhline(y=0, color='gray', linestyle='--')
plt.xlabel("x")
plt.ylabel("f(x)")
plt.title("Gráfica de la función")
plt.legend()
plt.grid(True)
plt.show()