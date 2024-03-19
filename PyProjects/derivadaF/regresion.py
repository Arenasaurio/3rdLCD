import pandas as pd
import math
from tabulate import tabulate
import matplotlib.pyplot as plt
import numpy as np

def f(x):
  return x**4

def d1dx(x, h):
  derivada=(f(x)-f(x-h))/h
  return derivada

def alt_d1dx(x, h):
  xb=x-h
  xc=x-(2*h)
  a=3*f(x)
  b=4*f(xb)
  c=f(xc)
  derivada=(a-b+c)/(2*h)
  return derivada

def d2dx(x,h):
  xb=x-h
  xc=x-(2*h)
  a=f(x)
  b=2*f(xb)
  c=f(xc)
  derivada2=(a-b+c)/(h**2)
  return derivada2

def alt_d2dx(x, h):
  xb=x-h
  xc=x-(2*h)
  xd=x-(3*h)
  a=2*f(x)
  b=5*f(xb)
  c=4*f(xc)
  d=f(xd)
  derivada2=(a-b+c-d)/(h**2)
  return derivada2
##posible fallo al no poseer 3 en adelante derivada
def d3dx(x, h):
  xb=x-h
  xc=x-(2*h)
  xd=x-(3*h)
  a=f(x)
  b=3*f(xb)
  c=3*f(xc)
  d=f(xd)
  derivada3=(a-b+c-d)/(h**3)
  return derivada3

def alt_d3dx(x, h):
  xb=x-h
  xc=x-(2*h)
  xd=x-(3*h)
  xe=x-(4*h)
  a=5*f(x)
  b=18*f(xb)
  c=24*f(xc)
  d=14*f(xd)
  e=3*f(xe)
  hi=h**3
  derivada3=(a-b+c-d+e)/(2*hi)
  return derivada3

def d4dx(x, h):
  xb=x-h
  xc=x-(2*h)
  xd=x-(3*h)
  xe=x-(4*h)
  a=f(x)
  b=4*f(xb)
  c=6*f(xc)
  d=4*f(xd)
  e=f(xe)
  derivada4=(a-b+c-d+e)/(h**4)
  return derivada4

def alt_d4dx(x, h):
  xb=x-h
  xc=x-(2*h)
  xd=x-(3*h)
  xe=x-(4*h)
  xf=x-(5*h)
  a=3*f(x)
  b=14*f(xb)
  c=26*f(xc)
  d=24*f(xd)
  e=11*f(xe)
  ff=2*f(xf)
  derivada4=(a-b+c-d+e-ff)/(h**4)
  return derivada4


x=float(input('Dame el valor de x:'))
h=float(input('Dame el valor para h(se sugiere uno muy pequeño):'))

derivada1forma1=d1dx(x,h)
derivada1forma2=alt_d1dx(x,h)
derivada2forma1=d2dx(x,h)
derivada2forma2=alt_d2dx(x,h)
derivada3forma1=d3dx(x,h)
derivada3forma2=alt_d3dx(x,h)
derivada4forma1=d4dx(x,h)
derivada4forma2=alt_d4dx(x,h)
print(derivada1forma1)
print(derivada1forma2)
print(derivada2forma1)
print(derivada2forma2)
print(derivada3forma1)
print(derivada3forma2)
print(derivada4forma1)
print(derivada4forma2)
