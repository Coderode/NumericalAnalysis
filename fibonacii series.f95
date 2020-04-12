program fibonacii_series
    integer f1,f2
    print *,"First 10 fibonacii series numbers:"
    f1=0
    f2=1
    print '(I3)',f1
    print '(I3)',f2
    do i=3,10
     temp=f2
     f2=f2+f1
     f1=temp
     print '(I3)',f2
    end do
end program
