!Area of triangle using subroutine
program areaOfTriangle
    real a,b,c,area
    print * ,'enter a,b,c:'
    read * ,a,b,c
    if(a+b > c .and. b+c > a .and. a+c > b )then
        call TriangleArea(a,b,c,area)
        print *,'area of triangle is : ',area,'cm^2'
    else
        print *,'Not a valid triangle try again!'
    end if
end program
!always define subroutine after main
subroutine TriangleArea(a,b,c,area)  !last argument is for return value
    real a,b,c,area,s
    s=(a+b+c)/2
    area=sqrt(s*(s-a)*(s-b)*(s-c))
    return
end subroutine
