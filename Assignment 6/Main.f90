program Main

implicit none

integer                                :: a, b, mcol, mrol, ncol, nrol, i, j
real(8),dimension(:,:),allocatable     :: M, N

a=50
b=51
mcol=3
mrol=4
ncol=4
nrol=3

open(unit=a,file='M.dat',status='old')
open(unit=b,file='N.dat',status='old')
allocate(M(mrol,mcol))
allocate(N(nrol,ncol))
do i=1,mrol
  read(a,*) M(i,:)
enddo

do i=1,nrol
  read(b,*) N(i,:)
enddo

do i=1,mrol
  write(*,*) "Line",i,":",M(i,:)
enddo
do i=1,nrol
  write(*,*) "Line ",i,":",N(i,:)
enddo

deallocate(M)
deallocate(N)
End Program Main

! Many Thanks for Penghan teaching me how to use fortran. The pdf has specific instructions for what he taught me

