function [derivative] = centered(x, y,ey, s, dNumber)
%1 for large 0 for small
h = x(2)-x(1);

if dNumber == 1 && s == 1
    derivative = (-y(ey+2)+8*y(ey+1)-8*y(ey-1)+y(ey-2))/(12*h);
elseif dNumber == 1 && s == 0
    derivative = (y(ey+1)-y(ey-1))/(2*h);
elseif dNumber == 2 && s == 0
    derivative = (-y(ey+2)+16*y(ey+1)-30*y(ey)+16*y(ey-1)-y(ey-2))/(12*h);
elseif dNumber == 2 && s == 1
    derivative = (y(ey+1)-2*y(ey)+y(ey-1))/(h^2)
elseif dNumber == 3 && s == 0
    derivative = (y(ey+2)-2*y(ey+1)+2*y(ey-1)-y(ey-2))/(2*h^3)
elseif dNumber == 3 && s == 1
    derivative = (-y(ey+3)+8*y(ey+2)-13*y(ey+1)+13*y(ey-1)-8*y(y-2)+y(ey-3))/(8*h^3);
elseif dNumber == 4 && s == 1
    derivative = (-y(ey+3)+12*y(ey+2)-39*y(ey+1)+56*y(ey)-39*y(ey-1)+12*y(ey-2)-y(ey-3))/(6*h^4);
elseif dNumber == 4 && s == 0
    derivative = (y(ey+2)-4*y(ey+1)+6*y(ey)-4*y(ey-1)+y(ey-2))/(h^4);
end

disp(derivative)
end

    
    