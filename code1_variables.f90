!code name: 'code1_variables.f90'
!
!description: 'This code presents some kinds of variables
!              and how to operate with them'
!
!date: June 24th, 2021
!author: Leonardo Brito
!Physics Phd Student
!Institute of Physics (IFUSP)
!University of SÆo Paulo (USP)
!_________________________________________
program code1
implicit none
!We declare the variables before any command line
!*
!declare constants (can't be changed later)
integer,parameter::i=20 !integer constant
real,parameter::x=1.0 !real constant (single precison)
real*8,parameter::xd=1.0d0 !real constant (double precison)
complex,parameter::z=(0.0,1.0) !complex constant (single precison)
complex*16,parameter::zd=(0.0d0,1.0d0) !complex constant (double precison)
!*
!declare variables (can be changed)
!*
integer::i1,i2,i3 !integers single precison
real::x1,x2,x3,x4 !real single precision
real*8::x1d !real double precision
complex::z1,z2,z3 !complex single precision
complex*16::z1d !compelx single precision
!*
!declare arrays (vector and matrices)
!*
integer,dimension(1:4)::v1 !(vector of 4 integer numbers)
real,dimension(1:4)::v2,v3,v4 !(vector of 4 real numbers)
complex*16,dimension(1:4)::vc2,vc3,vc4 !(vector of 4 real numbers)
real,dimension(4)::v5,v6 !(vectors of 4 real numbers, alternative way, you don't need to declare if it starts at index '0', or '1')
real,dimension(0:3)::v7,v8 !(vectors of 4 real numbers, using 'zero' index)
real*8,dimension(1:4)::v2d !(vector of 4 real numbers (double precision))
integer,dimension(1:2,1:2)::A1,A2,A3,A4,A5 !(matrix of 4 integer elements)
real,dimension(1:2,1:2)::B1,B2,B3 !(matrix of 4 real elements)
real,dimension(0:1,0:1)::C1,C2,C3 !(matrix of 4 real elements, you can also use '0' index)
real,dimension(2,2)::D1,D2,D3 !(matrix of 4 real elements, alternative way')

!
!
!Obs: capital letters doesn't make difference, A=a


!--------------------------------------------

!OPERATING WITH INTEGERS

write(*,*)'--INTEGERS--'
write(*,*) !add a white line
write(*,*) !add a white line

!remeber, we dfined i=1 a integer constant,
! but i1 is a integer variables, and can
! change anytime you want it

!powers
i1=i**2
write(*,*)'i1 (old): ',i1
write(*,*) !add a white line
i1=i**3
write(*,*)'i1 (new): ',i1
write(*,*) !add a white line

!define two integers
i1=1
write(*,*)'i1: ',i1
write(*,*) !add a white line
i2=2
write(*,*)'i2: ', i1
write(*,*) !add a white line

!sum
i3=i1+i2
write(*,*)'i3: ', i3
write(*,*) !add a white line

i3=i1-i2
write(*,*)'i3: ', i3
write(*,*) !add a white line

!product
i3=i1*i2
write(*,*)'i3: ',i3
write(*,*) !add a white line


!division
i3=i1/i2 !forbidden 1/2 is not an integer and i3 was defined as a integer
write(*,*)'i3: ',i3
write(*,*) !add a white line
i3=i2/i1 !now it's ok, because 2/1=2 is an integer
write(*,*)'i3: ',i3
write(*,*) !add a white line



!-----------------------------------------

!OPERATING WITH REAL VARIABLES

write(*,*)'--REAL--'
write(*,*) !add a white line
write(*,*) !add a white line

!remeber x=1.0 is a real constant, but x1 is a real variable
x1=x**2
write(*,*)'x1 (old): ',x1
write(*,*) !add a white line
x1=x+2
write(*,*)'x1 (new): ',x1
write(*,*) !add a white line

!define some real variables
x1=5.0
write(*,*)'x1: ',x1
write(*,*) !add a white line
x2=10.0
write(*,*)'x2: ',x2
write(*,*) !add a white line

!product
x3=x1*x2
write(*,*)'x3: ',x3
write(*,*) !add a white line
!division
x3=x1/x2 ! now we cant have rational numbers
write(*,*)'x3: ',x3
write(*,*) !add a white line
!power
x3=x2**x1
write(*,*)'x3: ',x3
write(*,*) !add a white line
!sum
write(*,*)'x3: ',x3
write(*,*) !add a white line
x3=x2+x1
write(*,*)'x3: ',x3
write(*,*) !add a white line
x3=x1-x2
write(*,*)'x3: ',x3
write(*,*) !add a white line
!
!we also can redine a varible based on its old value
x4=1.0
write(*,*)'x4: ',x4
write(*,*) !add a white line
x4=x4+2.0
write(*,*)'x4: ',x4
write(*,*) !add a white line




!------------------------------------------------

!OPERATING WITH REAL ARRAYS (VECTOR AND MATRIX)

write(*,*)'--ARRAYS--'
write(*,*) !add a white line
write(*,*) !add a white line


write(*,*)'--ARRAYS -VECTORS--'
write(*,*) !add a white line
write(*,*) !add a white line

!vector (we choos v2,v3 and v4)
!define each element
v2(1)=1.0;v2(2)=2.0;v2(3)=3.0;v2(4)=4.0
!will be written as a row
write(*,*)'v2: ',v2
write(*,*) !add a white line
!vector where all elements are '2.0'
v3=2.0
write(*,*)'v3: ',v3
write(*,*) !add a white line
!sum
v4=v2+v3
write(*,*)'v4=v2+v3 ',v4
write(*,*) !add a white line
v4=v2-v3
write(*,*)'v4 = v2-v3 ',v4
write(*,*) !add a white line
!product (element with element)
v4=v2*v3
write(*,*)'v4 = v2*v3 ',v4
write(*,*) !add a white line

!norm of a vector
x1=sum(v4*v4)
write(*,*)'norma(v4) ',x1
write(*,*) !add a white line
!dot/inner product between v3 and v4
x1=dot_product(v3,v4)
write(*,*)'<v3|v4> ',x1
write(*,*) !add a white line
!norm-alternative (can be used for complex numbers too)
x1=dot_product(v4,v4)
write(*,*)'norma(v4)=<v4|v4>: ',x1
write(*,*) !add a white line

write(*,*)'complex vectors'
write(*,*) !add a white line

!complex vectors (we will use vc2,vc3,vc4)
vc2(1)=(1.0,1.0);vc2(2)=(2.0,2.0);vc2(3)=(3.0,3.0);vc2(4)=(4.0,4.0)
write(*,*)'vc2: ',vc2
write(*,*) !add a white line
vc3=5*vc2
write(*,*)'vc3: ',vc3
write(*,*) !add a white line
!sum
vc4=vc2+vc3
write(*,*)'vc4: ',vc4
write(*,*) !add a white line

!norm of vc4
x1=real(sum(conjg(vc4)*vc4))
write(*,*)'norma(v4): ',x1
write(*,*) !add a white line
!norm of vc4-alternative way
x1=dot_product(vc4,vc4)
write(*,*)'norma(v4)=<v4|v4>: ',x1
write(*,*) !add a white line


write(*,*)'--ARRAYS -MATRICES-'
write(*,*) !add a white line
write(*,*) !add a white line

!integer matrix of zeros
A1=0
!will be written like  a 'row', but it is a matrix
! on the terminal will be A(1,1), A(1,2), A(2,1), A(2,2)
write(*,*)'A1: ',A1
write(*,*) !add a white line
!identity matrix (set '1' on the diagonals elements)
A1(1,1)=1;A1(2,2)=1
write(*,*)'A1: ',A1
write(*,*) !add a white line
!write it like we know a matrix
write(*,*)'A1 = identity'
write(*,*)A1(1,1),A1(1,2)
write(*,*)A1(2,1),A1(2,2)
write(*,*) !add a white line

!productof a mtrix by a factor
!all elements will be changed
A2=2*A1
write(*,*)'A2 = 2*A1'
write(*,*)A2(1,1),A2(1,2)
write(*,*)A2(2,1),A2(2,2)
write(*,*) !add a white line
!or we can set value by value
A2(1,1)=5;A2(1,2)=3;A2(2,1)=2;A2(2,2)=7
write(*,*)'A2 = 2*A1'
write(*,*)A2(1,1),A2(1,2)
write(*,*)A2(2,1),A2(2,2)
write(*,*) !add a white line

!matrix of 'twos' (all elements)
A3=2
write(*,*)'A3 = 2'
write(*,*)A3(1,1),A3(1,2)
write(*,*)A3(2,1),A3(2,2)
write(*,*) !add a white line
A4=4*A3
write(*,*)'A4 = 4*A3'
write(*,*)A4(1,1),A4(1,2)
write(*,*)A4(2,1),A4(2,2)
write(*,*) !add a white line
!sum of matrices (elemento with corresponding elements)
A5=A3+A4
write(*,*)'A5 = A3+A4'
write(*,*)A5(1,1),A5(1,2)
write(*,*)A5(2,1),A5(2,2)
write(*,*) !add a white line
!product, element by element
A5=A3*A4
write(*,*)'A5:'
write(*,*)A5(1,1),A5(1,2)
write(*,*)A5(2,1),A5(2,2)
write(*,*) !add a white line
!matrix product
A5=matmul(A3,A4)
write(*,*)'A5: matmul(A3,A4)'
write(*,*)A5(1,1),A5(1,2)
write(*,*)A5(2,1),A5(2,2)
write(*,*) !add a white line


!pause !(use this comand at the last code line if your compiler does not keep your terminal open, this is required on 'windows')


end program code1
