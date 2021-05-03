function [newValue] = eV2Joules(x,ev)
%ev = 1 converts joules to ev
%ev = 0 converts ev to joules
% x = value to convert

if ev == 1
    newValue = x.*6.242e+18;
elseif ev == 0
    newValue = x./(6.242e+18);
end

disp(newValue)
end

    
    

