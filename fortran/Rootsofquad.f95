program RootsOfQuadratic
    !ax^2+bx+c=0
    real a,b,c,r1,r2,D
    complex cr1,cr2,D2
    print *,"enter a,b,c:"
    read *,a,b,c
    D=b*b-4*a*C
    D2=b*b-4*a*C
    if(D.GT.0)then
        print *,"Real and distinct roots:"
        r1=(-b+sqrt(D))/(2*a)
        r2=(-b-sqrt(D))/(2*a)
        print *,"root1=",r1
        print *,"rppt2=",r2
    elseif(D.lt.0)then
        print *,"complex root:"
        cr1=(-b+csqrt(D2))/(2*a)
        cr2=(-b-csqrt(D2))/(2*a)
        print *,"root1=",cr1
        print *,"rppt2=",cr2
    else
        print *,"real and equal roots:"
        r1=-b/(2*a)
        r2=r1
        print *,"root1=",r1
        print *,"rppt2=",r2
    end if
    stop

end program
