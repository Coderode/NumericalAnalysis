!guass siedel method
!for solving system of algebraic equations
program gaussSiedel
    parameter(maxit=100,eps=1.0e-5)
    real x(20),A(10,11),maxerr
    open(unit=1,file='input.dat',status='old')
    read(1,*) N
    read(1,*) ((A(I,J), J=1,N+1),I=1,N)
    close(1)
    print *,"The augmented matrix is :"
    do I=1,N
        do J=1,N+1
            print '(1x,F10.2,\)',A(I,J)
        end do
        print *
    end do
    read *
    do I=1,N
        x(I)=0.0
    end do
    do k=1,maxit
        maxerr=0.0
        do I=1,N
            ssum=0.0
            do J=1,N
                if(I.ne.J) ssum=ssum+A(I,J)*x(J)
            end do
            t=(A(I,N+1)-ssum)/A(I,I)
            relerr=abs((x(I)-t)/t)
            if(relerr.gt.maxerr) maxerr=relerr
            x(I)=t
        end do
        if(maxerr.le.eps) then
            print *,"solution : "
            do I=1,N
                print *,x(I)
            end do
            !exit
            print *,"converges"
            read *
            stop "Converges"
        end if
    end do
    print *,"Does not converges"
    read *
    stop "does not converge"

end program

