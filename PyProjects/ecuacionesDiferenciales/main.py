import edo

x=float(input('Dame el valor inicial de x(x0): '))
y=float(input('Dame el valor inicial de y(y0): '))
h=float(input('Dame el valor de h por favor: '))
iteraciones=int(input('Dame el numero de iteraciones a realizar: '))

for i in range(0,iteraciones):
    '''ypp1=edo.euler(x,y,h)
    x+=h
    y=ypp1
    print(ypp1)'''
    ypp1=edo.rungekutta2(x,y,h)
    x+=h
    y=ypp1
    print(ypp1)

    