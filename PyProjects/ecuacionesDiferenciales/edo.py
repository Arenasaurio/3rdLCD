#para el puto pancho
import numpy as np
def yprima(x,y):
    #return(-3*x)+(2*y)-5
    return np.cos(2*x*y)+(x/3)

def euler(x, y, h):
    yp1=y+(h*yprima(x,y))
    return yp1

def rungekutta2(x, y, h):
    k1=yprima(x,y)
    k2=yprima(x+(0.5*h),y+(0.5*k1*h))
    yp1=y+(k2*h)
    return yp1

def rungekutta3(x, y, h):
    k1=yprima(x,y)
    k2=yprima(x+(0.5*h),y+(0.5*k1*h))
    k3=yprima(x+h, y-(k1*h)+(2*k2*h))
    yp1=y+((k1+(4*k2)+k3)/6*h)
    return yp1

def k1(x,y,h):
    return yprima(x,y)

def k2(x,y,h):
    k1=yprima(x,y)
    k2=yprima(x+(0.5*h),y+(0.5*k1*h))
    return k2

def k3(x,y,h):
    k1=yprima(x,y)
    k2=yprima(x+(0.5*h),y+(0.5*k1*h))
    k3=yprima(x+h, y-(k1*h)+(2*k2*h))
    return k3