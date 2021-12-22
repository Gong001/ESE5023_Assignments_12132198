
Program Main_read
implicit none
integer :: a, b, mcol, mrol, ncol, nrol, i, j
real(8), dimension(:,:),allocatable :: M, N
real(8), dimension(4,4) :: MN
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

close(a)
close(b)

do i=1,mrol
write(*,*) "Line ",i,":",M(i,:)
enddo

do i=1,nrol
write(*,*) "Line ",i,":",N(i,:)
enddo

call Matrix_multip(M,N,MN)
do i=1,4
write(*,*) "Line ",i,":",MN(i,:)
enddo
open(unit=a,file='new1.dat',status='replace')
do i=1,4
write(a,'(f9.2)') MN(i,:)
enddo

close(a)
deallocate(M)
deallocate(N)
End Program Main_read