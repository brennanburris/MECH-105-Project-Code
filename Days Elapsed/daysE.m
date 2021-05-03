function nd = daysE(mo, da, leap)
if nargin ~=3
    error('please use the correct number of inputs')
end
if mo > 12 || mo < 1
    error('please use a number between 1 and 12')
end 
Jan = 31;
if leap == 0
    Feb = 28;
elseif leap == 1
    Feb = 29;
else
    error('please input 0 or 1')
end
Mar = 31;
Apr = 30;
May = 31;
Jun = 30;
Jul = 31;
Aug = 31;
Sep = 30;
Oct = 31;
Nov = 30;
Dec = 31;
ndArray = [0 1 2 3 4 5 6 7 8 9 10 11 12; 0 Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec];
disp(ndArray)
nd = sum(ndArray(2, 1:mo)) + da 
end