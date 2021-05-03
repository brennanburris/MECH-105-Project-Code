function [I] = Simpson(x,y)

%Brennan Burris 
%Mech 105 Simpsons 1/3 Algorithm
%4/3/2021
% this code is supposed to find the integral of a table of data. Use at... 
...your own risk. It adds a trapezoid rule to the end of the table if the...
...table has an odd number of inputs. 

format long

A = [x;y];
[i,j] = size(A);

if length(x) ~= length(y);
    error('inputs invalid try again'); 
end
%defines variables
h = x(2)-x(1); %h should also be the interval spacing btwn x1 and x2
remainder = mod(j,2);

addTrap = (h/2)*(y(j)+y(j-1));

%code below checks for uniform interval spacing
n = 1;
if j > 1;
    while n < j;
        n = n; %n adds by one every time until it is == the num columns
        diff =(x(n+1)-x(n));
        if diff ~= h
            error('x values must be on the same interval')
        end
        n = n+1
    end
elseif j==1
    I = A(1,1);
end
%this sets variables that are used later. if A is [2,2], its size 22, if
%its size [3,2], the variable is set as 23. anything else is set as 1
if (size(A) == [2,2])
    Size = 22;
elseif (size(A) == [2,3])
    Size = 23;
elseif (size(A) ~= [1,1])
    Size = 1;
end
%if the table has an odd number of inputs, this is used
if (remainder ~= 0) && (Size == 1) && (j ~= 1);
    A1 = A(:, 1:j-1);
    A = A1;
end
%new a for an odd table
[i,j] = size(A)
disp(A);
h = (x(2)-x(1));

SumEvens = 0; 
SumOdds = 0;
%if the array is not [2,3] or [2,2], this is used to add up the sum of the
%odd and even y values
if Size ~= 23 && Size ~= 22; 
    for n=(2:2:j-2);
        n = n;
        SumEvens = SumEvens;
        SumEf = y(n); %placeholder for current even value
        SumEvens = SumEvens+SumEf;
    end
    
    for n =(3:2:j-1)
        n = n;
        SumOdds = SumOdds
        SumOf = y(n) %placeholder for current odd value
        SumOdds = SumOdds + SumOf
    end
end
%filters by remainder and size
if remainder == 0 && Size == 1 && j ~= 1 %even functions with size>[2,3]
    I = addTrap + (h/3)*(y(1)+y(j)+(2*SumOdds)+(4*SumEvens));
%odd functions with size>[2,3]
elseif remainder ~= 0 && Size == 1 && j ~= 1 && Size ~= 23;
    I =((h/3)*(y(1)+y(j)+(4*SumEvens)+(2*(SumOdds))));
    warning('trapezoidal rule used')
%odd functions with size=[2,3]
elseif remainder ~= 0 && Size == 23 && j ~= 1;
    I = (h/3)*(y(1)+(4*y(2))+y(j));
%functions with size = [2,2]
elseif Size == 22 && j ~= 1 ;
   I = ((y(1)+y(2))*.5*h);
   warning('trapezoidal rule used')
end
format short

disp(h);
disp(SumOdds);
disp(SumEvens);
disp(I);

end
