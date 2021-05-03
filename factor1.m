function[L,U, P] = factor1(A)


[row, col] = size(A);
L = eye(row, col);
U = A;
U(1,:) = A(1,:);

P = eye(row,col);

for i = (1: row)
    for j = (1:col)
        if A(i, j) == 0
            error('cannot contain 0')
        end
    end
end

    
for i = (2:row)
A1 = A;
if A1(1:1) < A(i,1)
    A(1,:) = A(i,:)
    A(i, :) = A1(1, :)
end
end


for c = (1:col-2);
    for r = (1:row);
        if r == row
            n = -1*(U(row,c+1)/(U(row-1,c+1)));
            A0 = n*(U(row-1,:));
        elseif r<row
            n = -1*(U(r+1,c)/(U(c,c)));
            A0 = n*(U(c,:));
        end
        %A0= n*(U(c,:))
        
        if r == row ;
            disp('r=row');
            U(row,:) = A0+U(row,:);
            U = U;
        else
            U(r+1,:)= A0+U(r+1,:);
            U = U;
        end
        
         if r == 3;
             disp('r=row');
            L(row,c+1)= -n;
            L = L;
         else
            L(r+1,c) = -n;
            L = L;
         end
    end
end

if P*A ~= L*U
    error(no)
end

L = P*A/U 
L(:,:) = L
U = U
P = P

if P*A ~= L*U
    error('PA!=LU')
end
end
