!code name: 'code5_write-read_files.f90'
!
!description: 'This code presents how to write/read data
!              and handle files'.
!
!date: June 29th, 2021
!author: Leonardo Brito
!Physics Phd Student
!Institute of Physics (IFUSP)
!University of SÆo Paulo (USP)
!_________________________________________
program code5
implicit none
integer,parameter::N=11
integer,dimension(N)::v
integer::i,j
!write on the terminal
do i=1,10
   write(*,*)i
end do
!read from terminal
write(*,*)'write an integer number:'
read(*,*)j
write(*,*)'you choose the number: ',j


!write integers 0,10,20,...,100 in
! a 'txt' file
open(1,file="first_file.txt")
do i=0,100,10
   write(1,*)i
end do
close(1)
!read the file
!you need to know the size of the file
open(2,file="first_file.txt")
do j=0,N-1
   read(2,*)v(j)
end do
close(2)
!write a new file the index and the vector you got before, as two columns
open(3,file="second_file.txt")
do j=0,N-1
   write(3,*)j,v(j)
end do
close(3)

!you can open a file in the main code, and write on it
!in a routine
open(4,file="third_file.txt")
call rout1()
close(4)

!or maybe you can open and write a file in a routine
call rout2()



!sometimes you have to write a large number of files,
!then, is convenient do not give names for them,
!just give them numbers '#', teh file will be found 'fort.#'
!each file contains two coluns 'index j' and 'vector on j,  v(j)'

do i=1,5
   do j=0,N-1
      write(100+i,*)j,i*v(j)
   end do
end do
!some programs can open files with the extension'fort.#',
!but you always can convert it, just rename it as 'fort#.txt'.



!obs: We don't need to use the command 'close(#)' everytime,
!     but if you not, the files will be written only after
!     the execution is completely finished.


end program code5
!********************************************
subroutine rout1()
implicit none

write(4,*)"'rout1' says hi!"


end subroutine rout1
!********************************************
subroutine rout2()
implicit none

open(5,file="fourth_file.txt")
write(5,*)"'rout2' says hi!"
close(5)

end subroutine rout2
