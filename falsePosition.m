function [root, fx, ea, iter] = falsePosition(func, xl, xu,es,varargin)

%Function to find the root of an equation between two predetermined bounds
%   This function will take a function, upper and lower bounds, and a
%   max iteration number to find the bounds to an error of .0001 unless...
%   otherwise specified.

if nargin < 5 && nargin >= 3 %is narg between 5 and 3
    maxit = 3;
    es = .005;
elseif nargin < 3
    error('Use more arguments')
end



fxu = func(xu,varargin{:});
fxl = func(xl,varargin{:});
iter = 0;
ea = (abs((xu-xl)/xu))*100;



root = 0;

while (ea >= es) && iter ~= maxit && func(root)~= 0 && func(xu) ~=0 && func(xl) ~= 0
    iter = iter + 1;
    ea = ea;
    xu= xu;
    xl = xl
    x = xl-((xu-xl)*fxl)/(fxu-fxl)
    ea = (abs((x-xl)/x))*100;
    if maxit == iter || ea <= es
        root = x;
        fx = func(root);
        ea = ea;
        iter = iter;
        break
    end
if func(xl) < 0
    xl = x;
    xu = xu
    fxl = func(xl);
elseif func(xu) < 0
    xu = x 
    xl = xl
    fxu = func(xu)
end
    
    
end
 if func(0) == 0
            fx = 0;
            root = 0;
            ea = 0
            iter = 1;
            fprintf('%d\n', root);
            fprintf('%d\n', fx);
            fprintf('%d\n', ea);
            fprintf('%d\n', iter);
 
 elseif func(xl) == 0
            fx = 0;
            root = xl;
            ea = 0
            iter = 1;
            fprintf('%d\n', root);
            fprintf('%d\n', fx);
            fprintf('%d\n', ea);
            fprintf('%d\n', iter);
 
 elseif func(xu) == 0
            fx = 0;
            root = xu;
            ea = 0
            iter = 1;
            fprintf('%d\n', root);
            fprintf('%d\n', fx);
            fprintf('%d\n', ea);
            fprintf('%d\n', iter);
 end
 root = x;
 fx = func(root);
 ea = ea;
 iter = iter;
 disp(root)
 disp(ea)
 disp(iter)

end


