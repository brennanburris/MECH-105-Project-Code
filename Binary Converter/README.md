# Description for convert2binary Algorithm

This code takes a number in base ten and will convert it to any base you want. Contrary to the name of the function, the function takes two
inputs: a base ten number and the base number you wish to convert to. For example, the syntax "convert2binary(10,2)" will give you an 
output of 1010, whereas "convert2binary(10,8)" yeilds 12. Furthermore, the function defaults to binary: "convert2binary(10)" yields 1010. 

This code works by checking the remainder against the base number. It uses the mod() function to find the remainder of the input divided by
the base number. The input then is changed to the floor of the input divided by the base number. The remainder is then indexed in an array. 
The array is flipped from vertical to horizontal and displayed.

