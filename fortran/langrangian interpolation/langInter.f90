!langrangian interpolation
real x(10),y(10),xp
print *,"Enter number of points given:"
read *,N
print *,"Enter x and y respectively :"
do i=1,N
	print *,"data ",i
	read *,x(i),y(i)
end do
print *,"Enter value of x to find y(x):"
read *,xp
s=0
do i=1,N
	p=1
	do j=1,N
		if(i.eq.j) cycle
			p=p*(xp-x(j))/(x(i)-x(j))
	end do
	s=s+p*y(i)
end do
print *,"y(",xp,")=",s
read *
stop
end