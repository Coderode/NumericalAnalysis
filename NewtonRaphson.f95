!Newton raphson method
program NewtonRaphson
    parameter (eps=0.0001,maxit=100)
    integer I/0/
    real x,xnew
    logical flag/.true./
    F(x)=x**3-4*x-9
    FD(x)=3*x*x-4
    print *,"Enter gauess value : "
    read *,x
    if(abs(FD(x)).eq.0) stop "divided by zero"
    do while(flag .and. I .lt.maxit)
        xnew=x-F(x)/FD(x)
        if(abs(xnew-x).lt.eps) then
            flag=.false.
        else
            I=I+1
            x=xnew
        end if
        print *,'x=',x,'F(x)=',F(x)
    end do
    if(I.eq.maxit) then
        print *,"does not converge"
        stop "does not converge"
    end if
    print *,"Root = ",xnew
    stop
end program
