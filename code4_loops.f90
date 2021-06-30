!code name: 'code4_loops.f90'
!
!description: 'This code presents loop structures like
!              'do','else', 'do while', 'if'
!               and 'continue'.
!
!date: June 25th, 2021
!author: Leonardo Brito
!Physics Phd Student
!Institute of Physics (IFUSP)
!University of SÆo Paulo (USP)
!_________________________________________

program code4
implicit none
integer::i,j,sum,count

!--------------------------------------------

! 'DO' STATEMENT

write(*,*)'DO STATEMENT'
write(*,*)
write(*,*)


! 'do' statement requires an explicit interval
! where it starts and where it ends.

! task 1: write on the terminal the integers 1,...,5
!         we use an integer auxiliary index 'i'
write(*,*)'task 1'
do i=1,5  !start on 'i=1' end on 'i=5'
   write(*,*)i
end do
write(*,*)!add a empty line

! task 1-2: write on the terminal the integers 5,...,1
!         we use an integer auxiliary index 'i'
write(*,*)'task 1-2'
do i=5,1,-1  !start on 'i=1' end on 'i=5'
   write(*,*)i
end do
write(*,*)!add a empty line

! task 1-3: write all combinations of (i,j) with i,j=1,...,4
!         we use two integers auxiliary indexes 'i' and 'j'.
write(*,*)'task 1-3'
do i=1,4  !start on 'i=1' end on 'i=5'
   do j=1,4
      write(*,*)i,j
   end do
end do
write(*,*)!add a empty line

! task 2: make the sum
write(*,*)'task 2'
sum=0
do i=1,5
   sum=sum+i
end do
write(*,*)'sum: ', sum
write(*,*)!add a empty line

!task 3: write the first 10 odd numbers in the range [1,50]
write(*,*)'task 3'
do i=1,50,2
   write(*,*)i
end do
write(*,*)!add a empty line
write(*,*)!add a empty line

!task 4: write the first 10 even numbers in the range [1,50]
write(*,*)'task 4'
do i=0,50,2
   write(*,*)i
end do
write(*,*)!add a empty line
write(*,*)!add a empty line


!task 5: write the first 5 odd numbers in the range [1,20]
!      as a row
write(*,*)'task 5'
write(*,*)(i, i=1,20,2)
write(*,*)!add a empty line
write(*,*)!add a empty line


!------------------------------------------------

! 'WHILE' STATEMENT

write(*,*)'DO WHILE STATEMENT'
write(*,*)
write(*,*)


! 'while' statement  do not need a fixed interval,
!  but you have to say the 'end condition', if not
!  the loop never ends.


!task 6: write the index i=1,...,5 on the terminal
write(*,*)'task 6'
i=1 !give the initial index
do while(i<6) !we set the condition to finish the loop as i<6
   write(*,*)i !write the index on the terminal every step
   i=i+1 !update the index every step
end do
write(*,*)!add a empty line

! task 7: write the sum
write(*,*)'task 7'
i=1 !give the initial index
sum=0
do while(i<6) !we set the condition to finish the loop as i<6
   write(*,*)i !write the index on the terminal every step
   sum=sum+i
   i=i+1 !update the index every step
end do
write(*,*)'sum: ', sum
write(*,*)!add a empty line
write(*,*)!add a empty line





!**********************************************

! 'IF' STATEMENT

write(*,*)'IF STATEMENT'
write(*,*)
write(*,*)

! task:  find the first 20th odd number in the range [1,100]
write(*,*)'task 8'
count=0
do i=1,100,2
   count=count+1
   if(count==20)then
      exit !when count=20 we leave the loop
   end if
end do
write(*,*)i, ' is the 20th odd number.'

!**********************************************

!**********************************************

! 'ELSE' STATEMENT

write(*,*)'ELSE STATEMENT'
write(*,*)
write(*,*)

! task 9:  calculate j=i**2, for i=1,...,12 and write it only if j>10,
!          if not, write 'j<10'
write(*,*)'task 9'
do i=1,12
   j=i**2
   if(j>=10)then
      write(*,*)j
      else !meand any case where j<10
         write(*,*)'j<10'
   end if
end do

! task 10:  calculate j=i**2, for i=1,...,12 and write 'good!' only if j>10,
!           if 'j>5' write 'not so bad!', if j is out of these cases
!           write 'bad!'. Count the number of 'good!'

!**********************************************
write(*,*)'task 10'
count=0
do i=1,12
   j=i**2
   if(j>=10)then
      write(*,*)'good!'
      count=count+1
      else if(j>=5)then ! means if j>=5 but j<10
         write(*,*)'not so bad!'
      else
         write(*,*)'bad!' ! means j<5, and therefore j<10 too
   end if
end do
write(*,*)"The number of 'good!' is: ", count



end program code4
