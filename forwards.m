function [derivative] = forwards(x, y,ey, s, dNumber)

h = x(2) - x(1);

if dNumber == 1 && s == 0
    derivative = (y(ey+1)-y(ey))/(h);
elseif dNumber == 1 && s == 1
   derivative = (-y(ey+2)+4*y(ey+1)-3*y(ey))/(2*h);
elseif dNumber == 2 && s == 0
    derivative = (y(ey+2)-2*y(ey+1)+y(ey))/(h^2);
elseif dNumber == 2 && s == 1 
    derivative = (-y(ey+3)+4*y(ey+2)-5*y(ey+1)+2*y(ey))/(h^2);
elseif dNumber == 3 && s == 0
    derivative = (y(ey+3)-3*y(ey+2)+3*y(ey+1)-y(ey))/(h^3);
elseif dNumber == 3 && s == 1
    derivative = (-3*y(ey+4)+14*y(ey+3)-24*y(ey+2)+18*y(ey+1)-5*y(ey))/(2*h^3);
elseif dNumber == 4 && s == 0
    derivative = (y(ey+4)-4*y(ey+3)+6*y(ey+2)-4*y(ey+1)+y(ey))/(h^4);
elseif dNumber == 4 && s == 1
    derivative = (-2*y(ey+5)+11*y(ey+4)-24*y(ey+3)+26*y(ey+2)-14*y(ey+1)+3*y(ey))/(h^4);
end
disp(derivative);
end
