!simpson's 3/8 th rule
program simpson3_8
	real a,b,sum1,sum2,integral,tsum
	integer n,I
	F(x)=exp(-0.5*x*x)
	print *,"Enter a,b,n:"
	read *,a,b,n
	h=(b-a)/n
	tsum=F(a)+F(b)
	sum1=0
	sum2=0
	do I=2,n
		sum1=sum1+F(a+(I-1)*h)
	end do
	do I=4,n-2,3
		sum2=sum2+F(a+(I-1)*h)
	end do
	integral = 3*h*(tsum + 3*sum1-sum2)/8.0
	print *,"Integral =",integral
	read *
end program