!code name: 'code3_routines.f90'
!
!description: 'This code presents the structure of the 'subroutines'
!
!date: June 29th, 2021
!author: Leonardo Brito
!Physics Phd Student
!Institute of Physics (IFUSP)
!University of SÆo Paulo (USP)
!_________________________________________
program code3
implicit none
integer,parameter::N=3 !define a integer constant
real*8,dimension(1:N)::v !
real*8::x,y,z



!The subroutines do not need to be
!declared like functions

!You can return several variables
!using only one routine
!but all its variables have to
!be declared


x=1.0d0
!y and z have only default values around zero,
!nothing was declared
write(*,*)
write(*,*)"Before call the routine 'rout1' "
write(*,*)'x: ',x
write(*,*)'y: ',y
write(*,*)'z: ',z

!y and z will receive values after
!the call
call rout1(x,y,z)
write(*,*)"After call the routine 'rout1' "
write(*,*)'x: ',x
write(*,*)'y: ',y
write(*,*)'z: ',z

!you can change all these values, because
!they are variables. The same is false
!for constants, i.e, declared
!as 'parameter'

call rout2(x,y,z)
write(*,*)"After call the routine 'rout2' "
write(*,*)'x: ',x
write(*,*)'y: ',y
write(*,*)'z: ',z
!you also can use arrays
call rout3(N,x,y,z,v)
write(*,*)"After call the routine 'rout3' "
write(*,*)'x: ',x
write(*,*)'y: ',y
write(*,*)'z: ',z
write(*,*)'v: ',v

end program code3
!*****************************************
subroutine rout1(x0,y0,z0)
implicit none
real*8::x0,y0,z0

y0=x0+1.0d0
z0=x0+2.0d0
end subroutine rout1
!*****************************************
subroutine rout2(x0,y0,z0)
implicit none
real*8::x0,y0,z0
real*8,parameter::c1=10.0 ! this is an internal variable for this routine

x0=c1*5*x0
y0=1.0d0
z0=300.0d0+x0

end subroutine rout2
!*****************************************
subroutine rout3(N0,x0,y0,z0,v0)
implicit none
integer::N0 !we need to bring N0 to declare the size of v0. Obs: N0 can not be changed (is a parameter)
real*8,dimension(1:N0)::v0
real*8::x0,y0,z0

v0(1)=x0
v0(2)=y0
v0(3)=z0

end subroutine rout3
!*****************************************

