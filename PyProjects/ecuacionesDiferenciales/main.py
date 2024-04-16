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
    ypp1=edo.rungekutta3(x,y,h)
    k1=edo.k1(x,y,h)
    k2=edo.k2(x,y,h)
    k3=edo.k3(x,y,h)
   
    print(f'k1=f({x}, {y})={k1}')
    print(f'k2=f({x}+1/2({h}), {y}+1/2({k1}*{h}))={k2}')
    print(f'k3=f({x}+{h}, {y}-({k1}*h)+(2*{k2}*{h}))={k3}')
    print(f'yi+1={y}+1/6({k1}+4({k2})+{k3})={ypp1}\n')
    x+=h
    y=ypp1

    