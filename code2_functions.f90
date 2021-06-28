!code name: 'code2_functions.f90'
!
!description: 'This code presents the structure of the 'functions'
!
!date: June 25th, 2021
!author: Leonardo Brito
!Physics Phd Student
!Institute of Physics (IFUSP)
!University of SÆo Paulo (USP)
!_________________________________________
program code2
implicit none
real::func1 !the function 'func1' is a real variable
real::func2 !the function 'func1' is a real variable
real::func3 !the function 'func1' is a real variable
complex::func4 !the function 'func1' is a complex variable
complex::v0
real::x0,y0,z0,w0

x0=2.0
y0=func1(x0) !here we use the function 'func1'

write(*,*)'x0: ',x0
write(*,*)'y0 = func1(x0): ',y0
write(*,*)!add an empty line

z0=func2(x0)
write(*,*)'x0: ',x0
write(*,*)'z0 = func2(x0): ',z0
write(*,*)!add an empty line

w0=func3(x0,y0)
write(*,*)'x0: ',x0
write(*,*)'y0: ',y0
write(*,*)'w0 = func3(x0,y0): ',w0
write(*,*)!add an empty line

v0=func4(x0,y0)
write(*,*)'x0: ',x0
write(*,*)'y0: ',y0
write(*,*)'v0 = func4(x0,y0): ',v0


pause


end program code2
!*****************************************
real function func1(x) !we set the nature of the function in the first statement
implicit none
real::x

func1=x**2

end function func1
!******************************************
function func2(x)
implicit none
real::func2 !we set here the nature of the function
real::x

func2=x**3

end function func2
!*******************************************
function func3(x,y)
implicit none
real::func3,x,y
real,parameter::cte=0.1

func3=cte*(x+y)

end function func3
!********************************************
!*******************************************
function func4(x,y)
implicit none
complex func4
real::x,y

func4=cmplx(x,y)

end function func4
