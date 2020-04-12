!program to find peremeter and area of a triangle using oneline functions
program Triangle
    real a,b,c,P,Area,s
    P(a,b,c)=a+b+c
    Area(a,b,c)=sqrt(((a+b+c)/2)*((a+b+c)/2-a)*((a+b+c)/2-b)*((a+b+c)/2-c))
    print *,'Enter sides of the triangle a,b,c :'
    read *,a,b,c
    if(((a+b) .gt. c) .and. ((b+c).gt.a) .and. ((a+c).gt.b)) then
        print *,'Perimeter of the triangle is:',P(a,b,c),'cm'
        print *,'Area of triangle is :',Area(a,b,c),'cm^2'
    else
        print *,'not a valid triangle sides!'
    end if
end program
