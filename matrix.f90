program matrix  ! program to approximate y(x); Read from LEFT TO RIGHT
implicit none   ! [!!!] indicates matmul [!!!!!] indicates do loops
integer :: n, istop, q
integer (kind=4) :: i,j,f
real (kind=4), dimension(:,:), allocatable :: D
real (kind=4), dimension(:), allocatable :: gp, gdp, g, gpb, gpc
real (kind=4):: x, dx, y, k, error
open(unit=20,file='matrix.out')
print*,' Input ONE desired integer for N amount of spaces'  
read*,n
dx = 2./n
k=1./(2*dx)
print*, 'k= ',k            
allocate(gpc(1:n+1))         
allocate(gpb(1:n+1))                 
allocate(gp(1:n+1))         
allocate(gdp(1:n+1))        
allocate(g(1:n+1))           
allocate(D(1:n+1,1:n+1))     
D(1,1) = -3*k 
D(1,2) = 4*k  
D(1,3) = -1*k
D(n+1,n-1) = 1*k
D(n+1,n) = -4*k
D(n+1,n+1) = 3*k
do i=2,n !!!!!
D(i,i-1) = -1*k
D(i,i+1) = 1*k
enddo
print*,'Discrete [Matrix]'
print*, D
print*,''
istop = n+1
i=1
q=1
do while(i<=istop) !!!!!
x=-1+(2./n)*(i-1)
print*, x
y=sin(10.*x)
G(q) = y
i=i+1
q=q+1
enddo
print*, 'F of (x) [Vector]'
print*, G
print*,''
do i=1, istop !!!!!
   do q=1, istop
   gpb(i)=gpb(i)+D(i,q)*G(q)
   enddo
enddo
do i=1, istop !!!!!
   do q=1, istop
   gpc(i)=gpc(i)+D(i,q)*gpb(q)
   enddo
enddo
gp=matmul(D,G) !!!
gdp=matmul(D,gp) !!!
print*, 'First D Nested LOOP [!!!!!]'
print*,gpb
print*, 'First D MATMUL [!!!]'
print*,gp
print*,''
print*, 'Second D Nested [!!!!!]'
print*,gpc
print*, 'Second D MATMUL [!!!]'
print*,gdp
print*,''
print*,'error',10.-gpb((n/2.)+1.)
end program matrix
