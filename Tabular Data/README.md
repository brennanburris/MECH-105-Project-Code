# Descriptions for Simpsons 1/3 Integration and Derivative Algorithms

## Simpsons 1/3 Rule Integration Algorithm 

This function works with an input of two tables of data. One must be an independant variable of equally spaced data, the other must be a dependant variable table. 
It uses the Simpsons 1/3 rule to find the integral of tabular data. BE SURE that the independant variables are equally spaced, otherwise it will not work. For 
functions with an odd number of inputs, the function will use a trapezoidal rule for the last segment of integration. 

This code works by multiplying the odd inputs by 4 and the even inputs by 2, adding the endpoints, and multiplying by the step size over 6. It outputs the
integrated data. This code is fairly solid, please contact me if you find a bug in it. 

## Forwards, Backwards, and Centered Tabular Differentiation Algorithms. 

These functions all will output the derivative of EVENLY SPACED data. The user must be aware of the data they are integrating. Using a backwards approximation on
a center point of a table may not lead to the most accurate result. For all the functions, there are four inputs: the x table, the y table, the position of the y
value you wish to differentiate (more on this later), size (either a large table of length 5 or longer or a small table of 4 or shorter) and the derivative 
number. The functions will calculate up to the fourth derivative. Ey, or the position of the derivitive you wish to calculate, is important. For example, if you 
wanted to calculate the  first derivative at the second data point, of a table of length = 4 you would use the syntax: forwards(x , y, 2, 4, 1). 

These functions work well and are based on numerical differentiation theory. I made these as they are difficult to do by hand. They are a bit confusing as I made
them for my own usage, but they work well. Be sure to use s = 1 for a table of length 5 or longer and s = 0 for a table of length 4 or shorter. Be sure to know 
which derivative calculator to use for each point on your tables. For example, you may want to use a centered approximation for the derivative at data point 2 
with s = 0. S = 0 will estimate the derivative using the points ahead and behind the ey, the data point you would like to evaluate. Or, for the same setup, you
might choose to use a forward difference approximation (provided your table is long enough to calculate it). The forward difference approximation for a 2nd data
point will use the data point at y(4). 
