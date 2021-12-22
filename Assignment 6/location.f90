program location

use Solarhourangle

implicit none

real(8)         :: t,lon,h
integer         :: m,d

t=18
lon=118.24
m=12
d=18


call cal_sha(lon,m,d,t,h)

write(*,*) h

end program location