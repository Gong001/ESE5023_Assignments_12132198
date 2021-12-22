program Solar_elevation_angle

use Declination_angle
use Solarhourangle

implicit none

real, parameter         :: pai=3.1415926536
real(8)                 :: lat,lon,t,sha,da
integer                 :: m,d
real(8)                 :: sea

lat=32.22
lon=1.0
t=10.0
m=3
d=3

call cal_angle(m,d,da)
call cal_sha(lon,m,d,t,sha)

sea=asin(sin(lat/180*pai)*sin(da/180*pai)+cos(lat/180*pai)*cos(da/180*pai)*cos(sha/180*pai))
sea=sea/pai*180.0


write(*,*) sea

end program Solar_elevation_angle
