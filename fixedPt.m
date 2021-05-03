function[root] = fixedPt(func, initialX, es, iter)
ea = 100;
iterFunc = 0;

while es < ea && iterFunc ~= iter
    interFunc = iterFunc;
    xnew = func(initialX);
    xold = initialX;
    ea = abs(((xnew-xold)/xnew));
    if ea < es
        break
    end
    initialX = xnew;
    iterFunc = iterFunc+1;
end
   root = xnew;
   ea =ea;
   disp(ea);
   disp(root);
end

  