!code name: 'code0_structure.f90'
!
!description: 'This code presents the most basic structure of a code'
!
!date: June 23rd, 2021
!author: Leonardo Brito
!Physics Phd Student
!Institute of Physics (IFUSP)
!University of SÆo Paulo (USP)
!_________________________________________
program code0  !declare the name of the main code
implicit none ! statement to avoid troubles with internal variables

!write a sentence in terminal
write(*,*)'Hello World'

!write a sentence in a 'txt' file
open(1,file='sentence.txt')
write(1,*)'Hello World'

end program code0 !end the main code
