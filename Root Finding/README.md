# False Position and Fixed Point Root Finding Algorithm Descriptions 

## False Position Algorithm Root Finding Algorithm Description

This algorithm takes a function input, a lower x bound, an upper x bound, stopping error, variable of argument input. Only 3
variables are needed to run the code: the function and both bounds. The stopping error defaults to .005, or .5% error. The code
also defaults to a maximum of 250 iterations. Once either the iteration max or stopping criteria are met, the function outputs
the root, the function evaluated at the root, the approximate error, and the number of iterations. 

This code works by the False Position Root finding method. Once the root is guessed, it is checked for a sign change about the
x axis. If a sign change is detected, the root replaces one of the bounds accordingly. The code is fairly solid and I haven't 
been able to break it. 

## Fixed Point Iteration Root Finding Algorithm Description

This algorithm takes a function, an initial guess at the root, stopping error, and max iterations as inputs. The user must 
solve the function for x first before putting it into the function. Once the conditions are met, the root is output. 

This code works by evaluating the function for x values and then inputting those x values into the original function. I have
not used this code a whole lot, but it worked on the functions I tried. MAKE CERTAIN that you rearrange the function so there
is one x value on the left and a function in terms of x on the right. YOU WILL GET AN INCORRECT ROOT IF THIS IS NOT DONE.
