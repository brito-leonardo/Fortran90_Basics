!code name: 'code6_modules.f90'
!
!description: This code presents how to use 'global variables'
!             using modules
!
!date: June 29th, 2021
!author: Leonardo Brito
!Physics Phd Student
!Institute of Physics (IFUSP)
!University of SÆo Paulo (USP)
!_________________________________________

module mod1
implicit none
real*8,parameter::a1=5.0d0
real*8,parameter::a2=5.0d0
real*8::b1,b2
end module mod1
!*****************************************
module mod2
implicit none
integer,parameter::N=4
real*8,dimension(1:N)::u1,u2,u3
end module mod2
!*****************************************
program code6
use mod1 !we can use all variables from module mod1 with no additional declaration
use mod2, only:u1,N !we can use only the constant variable 'N'
implicit none
integer,parameter::i=100

write(*,*)"The parameter 'N' is: ", N
write(*,*)"The parameter 'i' is: ", i
write(*,*)!add an empty line



!We can change a variable (not parameter) from the modules
!anytime we want, in the main code, or in a subroutine

!change here, in the main code
write(*,*)"Before change:"
write(*,*)"u1: ", u1
write(*,*)
u1(1)=1.0d0;u1(2)=2.0d0;u1(3)=3.0d0;u1(4)=4.0d0
write(*,*)"After change:"
write(*,*)"u1: ", u1
write(*,*)

!change in a routine
write(*,*)"Before call rout1:"
write(*,*)"a1: ", a1
write(*,*)"b1: ", b1 !not declared, it has a default value
write(*,*)!add an empty line
call rout1()
write(*,*)"After call rout1:"
write(*,*)"a1: ", a1
write(*,*)"b1: ", b1 !now b1 was declared



end program code6
!*****************************************
subroutine rout1()
use mod1, only:a1,b1
implicit none

!a1 can not be changed, bur we can change b1
b1=a1**2

end subroutine rout1
