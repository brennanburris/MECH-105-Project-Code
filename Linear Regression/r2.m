function[r2] = r2(x,y)
format long 
n = length(x);

if length(x)~= length(y)
    error("input sizes must be the same length")
end

m = sum((x-mean(x)).*(y-mean(y)))/(sum((x-mean(x)).^2));

y_intercept = (sum(y-m.*x))/n;

r2 = ((n.*sum(x.*y)-(sum(x)*sum(y)))./(sqrt(n.*sum(x.^2)-(sum(x).^2))*sqrt...
    (n*sum(y.^2)-(sum(y).^2)))).^2;

formatSpecY0 = 'The y_0 value is %d\n';
fprintf(formatSpecY0, y_intercept);
formatSpecm = 'The slope is %d\n';
fprintf(formatSpecm, m);
formatSpecr2 = 'The r squared value is %d\n';
fprintf(formatSpecr2, r2);
end




