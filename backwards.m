function [derivative] = backwards(x, y,ey, s, dNumber)
% s = 1 for large s = 0 for small
h = x(2)-x(1);

if dNumber == 1 && s == 0
    derivative = (y(ey)-y(ey-1))/h;
elseif dNumber == 1 && s ==1 
    derivative = (3*y(ey)-4*y(ey-1)+y(ey-2))/(2*h);
elseif dNumber == 2 && s == 0
    derivative = (y(ey)-2*y(ey-1)+y(ey-2))/(h^2);
elseif dNumber == 2 && s == 1
    derivative = (1/(h^2))*(2*y(ey)-5*y(ey-1)+4*y(ey-2)-y(ey-3));
elseif dNumber == 3 && s == 0 
    derivative = (y(ey)-3*y(ey-1)+3*y(ey-2)-y(ey-3))/(h^3);
elseif dNumber == 3 && s == 1
    derivative = (5*y(ey)-18*y(ey-1)+24*y(ey-2)-14*y(ey-3)+3*y(ey-4))/(2*h^3);
elseif dNumber == 4 && s == 0 
    derivative = (y(ey)-4*y(ey-1)+6*y(ey-2)-4*y(ey-3)+y(ey-4))/(h^4);
elseif dNumber == 4 && s == 1
    derivative = (3*y(ey)-14*y(ey-1)+26*y(ey-2)-24*y(ey-3)+11*y(ey-4)-2*y(ey-5))/(h^4);
end
disp(derivative);
end
