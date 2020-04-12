!matrix sum,multiplication,transpose
program matrix
    real A(3,3),B(3,3),C(3,3)
    print *,'for matrix A:'
    call readMatrix(A,3,3)
    print *,'for matrix B:'
    call readMatrix(B,3,3)
    print *,'matrix A is :'
    call writeMatrix(A,3,3)
    print *,'matrix B is :'
    call writeMatrix(B,3,3)
    call MatrixMul(A,3,3,B,3,3,C)
    print *,'A*B='
    call writeMatrix(C,3,3)
	read *
    stop
end program

!subroutine for reading of matrix
subroutine readMatrix(A,m,n)

    integer :: i,j,m,n
    real A(m,n)
    print *,'enter the values for the matrix :'
    do i=1,m
        do j=1,n
            print *,'index[',i,',',j,']:'
            read *,A(i,j)
        end do
    end do
    return
end subroutine

!subroutine for writing matrix
subroutine writeMatrix(A,m,n)
    integer m,n
    real A(m,n)
    print *,m,'*',n,' matrix is:'
    do i=1,m
        do j=1,n
            print '(1x,f10.2,\)',A(i,j)
        end do
        print *
    end do
    return
end subroutine

!subroutine for matrix multiplication
subroutine MatrixMul(A,m1,n1,B,m2,n2,C)
    integer m1,n1,m2,n2
    real A(m1,n1),B(m2,n2),C(m1,n2)
    if(n1.ne.m2)then
        print *,'multiplication is not possible'
        return
    else
        do i=1,m1
            do j=1,n2
                C(i,j)=0
                do k=1,n1
                    C(i,j)=C(i,j)+A(i,k)*B(k,j)
                end do
            end do
        end do
    end if
    return
end subroutine

!subroutine for addition
subroutine matrixSum(A,m1,n1,B,m2,n2,C)
    integer m1,n1,m2,n2
    real A(m1,n1),B(m2,n2),C(m1,n2)
    if((m1.ne.m2).or.(n1.ne.m2))then
        print *,'Addition is not possible'
        return
    else
        do i=1,m1
            do j=1,n1
                C(i,j)=A(i,j)+B(i,j)
            end do
        end do
    end if
    return
end subroutine
!subroutine for transpose
subroutine matrixTranspose(A,m,n,B)
    integer m,n
    real A(m,n),B(m,n)
    do i=1,m
        do j=1,n
            B(j,i)=A(i,j)
        end do
    end do
    return
end subroutine


















