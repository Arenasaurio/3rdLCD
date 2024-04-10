#para el puto pancho
def yprima(x,y):
    return(-3*x)+(2*y)-5

def euler(x, y, h):
    yp1=y+(h*yprima(x,y))
    return yp1

def rungekutta2(x, y, h):
    k1=yprima(x,y)
    k2=yprima(x+(0.5*h),y+(0.5*k1*h))
    yp1=y+(k2*h)
    return yp1

