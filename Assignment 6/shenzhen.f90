program shenzhen

use Declination_angle
use Solarhourangle

implicit none

real, parameter         :: pai=3.1415926536
real(8)                 :: lat,lon,t,sha,da
integer                 :: m,d
real(8)                 :: SEA

lat=22.542883
lon=114.062996
t=10.0+32/60
m=12
d=31

call cal_angle(m,d,da)
call cal_sha(lon,m,d,t,sha)

SEA=asin(sin(lat/180*pai)*sin(da/180*pai)+cos(lat/180*pai)*cos(da/180*pai)*cos(sha/180*pai))
SEA=SEA/pai*180.0

write(*,*) SEA

end program shenzhen
