!function definiiton and calling
!define function before main
function sumnumbers(a,b)
    real a,b,s
    s=a+b
    sumnumbers=s
    return
end function
program sumNumbersxy
    real x,y
    print *,'enter the value of x and y :'
    read * ,x,y
    print * ,x,'+',y,'=',sumnumbers(x,y)
    stop
end program




