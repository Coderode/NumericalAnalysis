program prime_number
    integer isprime
    real i,j
    print *,"prime numbers between 100 and 200:"
    do i=100,200
        isprime=1
        do j=2,sqrt(i)
            if(mod(i,j).eq.0)then
                isprime=0
                exit
            end if
        end do
        if(isprime.eq.1)then
            print *,i
        end if
    end do
end program
