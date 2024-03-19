import regresion
import progresion

x=float(input('Dame el valor de x:'))
h=float(input('Dame el valor de h(se sugiere uno muy pequeño):'))

d1dxr=regresion.d1dx(x, h)
d1dxp=progresion.d1dx(x, h)
print(d1dxr)
print(d1dxp)