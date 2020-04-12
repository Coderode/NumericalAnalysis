!Gauss elimination method for solving system linear equations
real x(10),A(10,11)
open(11,file = "guass.dat",status = "old")
read(11,*) M ! read data from file
N=M+1
read(11,*) ((A(I,J) ,J=1,N),I=1,M)
call disp(A,M,N)
read *
do K=1,M
	call reduce(A,K,M,N)
	call disp(A,M,N)
	read *
end do
do K=M,1,-1
	call backSub(A,K,M,N,x)
end do
print *,"Roots are="
do I=1,M
	print *,x(I)
end do
read *
stop
end


subroutine disp(A,M,N)
	real A(10,11)
	do I=1,M
		do J=1,N
			write(*,'(2x,F8.2,\)') A(I,J)
		end do
		write(*,*)
	end do
	return 
end

subroutine reduce(A,K,M,N)
	real A(10,11),t,F
	t=A(K,K)
	do J=1,N
		A(K,J)=A(K,J)/t
	end do
	do I=K+1,M
		F=A(I,K)
		do J=1,N
			A(I,J)=A(I,J)-F*A(K,I)
		end do
	end do
	return
end

subroutine backSub(A,K,M,N,x)
	real A(10,11),x(10)
	x(K)=A(K,N)
	do J=K,N
		if(K.eq.J) cycle
			x(K)=x(K)-A(K,J)*x(J)
	end do
	x(K)=x(K)/A(K,K)
	return
end