
program prime_number
    integer isprime
    real j
    real num
    print *,"Enter a number to check whether is prime or not :"
    read *,num
    isprime=1
    do j=2,sqrt(num)
        if(mod(num,j).eq.0)then
            isprime=0
            exit
        end if
    end do
    if(isprime.eq.1)then
        print *,num," is a prime number"
    else
        print *,num," is not a prime number"
    end if
end program
