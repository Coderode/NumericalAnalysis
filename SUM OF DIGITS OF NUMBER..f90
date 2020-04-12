!SUM OF DIGITS OF A GIVEN INTEGER
    program Sum_of_digits
        integer num,s/0/
        print *,'Enter a number : '
        read *,num
        n=num
        do while(n.gt.0)
            s=s+mod(n,10)
            n=n/10
        end do
        print *,'The sum of digits of ',num,' is: ',s
        stop
    end program
