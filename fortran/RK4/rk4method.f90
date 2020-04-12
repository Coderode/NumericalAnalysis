!Runga kutta 4rth order method for solving ODE
real s1,s2,s3,s4,s,x1,x2,x3,x4,x,y,h,y1
F(x,y)=x*y
print *,"Enter starting points:"
read *,x1,y1
print *,"Last point of the range:"
read *,xf
print *,"Enter h"
read *,h
x=x1
y=y1
print *,"Solution is"
print *,"x(i)			y(i)"
print *,x,"			",y
do while(x.lt.xf)
	s1=F(x,y)
	s2=F(x+(h/2),y+(h/2)*s1)
	s3=F(x+(h/2),y+(h/2)*s2)
	s4=F(x+h,y+h*s3)
	s=h*(s1+2*s2+2*s3+s4)/6.0
	y=y+h*s
	x=x+h
	print *,x,"			",y
end do
read *
stop 
end
