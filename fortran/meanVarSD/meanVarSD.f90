!mean,variance and standard deviation of data entries
integer n
real mean,var,sd,dsum,msum
real, dimension(:), allocatable :: darray
print *,"Enter the number of elements:"
read *,n
!allocate memory
allocate (darray(n))
print *,"Now Enter the data elements"
do i=1,n
	print *,"data :",i
	read *,darray(i)
end do
msum=0
dsum=0
do i=1,n
	msum=msum+darray(i)
end do
mean=msum/n
do i=1,n
	dsum=dsum+(darray(i)-mean)**2
end do
var = dsum/(n-1)
sd=sqrt(var)
print *,"Mean:",mean
print *,"Variance:",var
print *,"Standard deviation:",sd
read *
end



	
