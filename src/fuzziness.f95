subroutine clean1(n,x,y)
implicit none
integer :: i,n
real :: x(n),y(n)

do i=1,n
y(i) = 4*x(i) + 2
enddo

end subroutine clean1
