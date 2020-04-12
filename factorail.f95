program factorial
    integer :: n,fact
    print *,'enter a number to find factorial:'
    read *,n
    print *,n,'!='
    fact=1
    do i=2,n
        fact=fact*n;
        n=n-1
    end do
    print *,fact
end program
