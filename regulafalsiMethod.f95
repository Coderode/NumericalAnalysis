! to implement regula falsi method for finding roots of non-linear equations

program regulafalsi
    parameter (eps=0.0001)  !tollerrance
    real x1,x2,x3
    integer I/0/
    logical flag/.true./
    F(x)=cos(x)-x*exp(x) !function
    print *,'enter x1,x2:'  !initial value or guess value
    read(*,*) x1,x2
    do while(F(x1)*F(x2).gt.0)
        print *,"f(x1)*f(x2)should be <0 "
        print *,"again enter x1,x2:"
        read *,x1,x2
        print *,F(x1),F(x2)
        read *
    end do
    print *,'x1=',x1,' and x2=',x2
    read *  !pause
    do while((flag).and.(I.lt.100))
        x3=(x1*F(x2)-x2*F(x1))/(F(x2)-F(x1))
        if(abs(F(x3)).lt.eps)then
            flag=.false.
        else
            I=I+1
            if(F(x1)*F(x3).lt.0)then
                x2=x3
            else
                x1=x3
            end if
        end if
    end do
    print *,'the approximate root of the equation is : ',x3
    print *,'No. of iteration performed :',I
    stop
end program
