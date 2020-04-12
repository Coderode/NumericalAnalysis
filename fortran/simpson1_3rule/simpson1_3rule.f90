!simpson's 1/3 rd rule
program simpson1_3
	real a,b,sum1,sum2,integral,tsum
	integer n,I
	F(x)=exp(-0.5*x*x)
	print *,"Enter a,b,n:"
	read *,a,b,n
	h=(b-a)/n
	tsum=F(a)+F(b)
	sum1=0
	sum2=0
	do I=2,n,2
		sum1=sum1+F(a+(I-1)*h)
	end do
	do I=3,n-1,2
		sum2=sum2+F(a+(I-1)*h)
	end do
	integral = h*(tsum + 4*sum1+2*sum2)/3.0
	print *,"Integral =",integral
	read *
end program