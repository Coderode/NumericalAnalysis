program prime_number
    integer isprime
    integer c
    real j,i
    print *,"First 20 prime numbers:"

    c=20
    i=2
    do while(c.gt.0)
        isprime=1
        do j=2,sqrt(i)
            if(mod(i,j).eq.0)then
                isprime=0
                exit
            end if
        end do
        if(isprime.eq.1)then
            print *,i
            c=c-1
        end if
        i=i+1
    end do
end program

