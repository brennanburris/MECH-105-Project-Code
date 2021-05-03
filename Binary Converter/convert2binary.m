function[base2] = convert2binary(base10,base_number)
%converts base ten to binary
if nargin == 1,
    base_number = 2;
    input = base10;
    remainder = 0;
elseif nargin == 2
    base_number = base_number;
    input = base10;
    remainder = 0;
else
    error('number of arguments is incorrect');
end


index = 1;
base2 = 0;
while input > 0
    remainder = mod(input, base_number);
    %returns remainder
    input = floor(input/base_number);
    %finds next closest integer less than or equal to that element
    base2(index) = remainder;
    
    index = index + 1;
end
base2 = flip(base2);
disp(base2);
end

    
    