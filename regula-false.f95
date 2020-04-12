program Regula_false
    implicit none
    integer :: deg,i,k,iteration
    real :: x1,x2,x3,fx1,fx2,fx3
    real, allocatable,dimension(:):: c  ! c is vector like

    print *,'enter degree of non-linear equaiton : '
    read *,deg
    allocate(c(deg+1))
    print *,'enter coefficients of polynomial:'
    do i=0,deg
        print *,'a(',i,')='
        read *,c(i)
    end do
    print *,'enter the lying roots :'
    print *,'x1='
    read *,x1
    print *,'x2='
    read *,x2
    print *,'Enter number of iterations to perform : '
    read *,iteration
    do i=1,iteration
        print *,'Iteration:',i
        fx1=c(0)
        do k=1,deg
            fx1=fx1+c(k)*(x1**(k))
        end do
        fx2=c(0)
        do k=1,deg
            fx2=fx2+c(k)*(x2**(k))
        end do
        x3=(x1*fx2-x2*fx1)/(fx2-fx1)
        !x3=x1-(fx1*(x2-x1))/(fx2-fx1)
        print *,'approximate root of equation is: ',x3
        fx3=c(0)
        do k=1,deg
            fx3=fx3+c(k)*(x3**(k))
        end do
        if(fx1*fx3<0) then
            x2=x3
        end if
        if(fx3*fx2<0) then
            x1=x3
        end if
    end do

end program
