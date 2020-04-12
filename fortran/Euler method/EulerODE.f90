!Euler method to solve ODE : ordinary differential equations
real x1,y1,x,y,xf,h
F(x,y) = x*y;
print *, "Euler x1, y1 :"
read *,x1,y1
print *,"Enter last point of the interval="
read *,xf
print *,"Enter h:"
read *,h
x=x1
y=y1
print *,"Solution is:"
print *,"x(i)			y(i)"
print *,x,"			",y

do while(x.LE.xf)
	y=y+h*F(x,y)
	x=x+h
	print *,x,"			",y
end do
read *
stop
end 