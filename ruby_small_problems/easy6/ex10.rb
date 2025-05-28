# What will the following code print, and why? Don't run the code until you have tried to answer.

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

# the code prints the object referenced by array2 with the elements starting with 'C' and 'S' within it modified by the calling of `#upcase!`; a destructive method on each of the elements of `array1`. 

# Given that on the third line we call `#each` on the object referenced by `array1` which iterates over each element of the array object, passing them one by one to the yielded block denoted by {} (curly braces), where each element is assigned to the `value` parameter, which is then available as a local variable for the block to use, the object referenced by this local variable is then passed in as an argument to the `#<<` called on array2, the shovel method appends the object to the calling object. This mutates the object assigned to `array2`, which now contains the same objects as `array1`. Even though the base array objects assigned to array1 and array2 are different, the objects present within the array are same. 

# On the 4th line, `#each` is again called on `array1`, within the yielded block; on each iteration the if statement checks if the current value starts with 'C' or 'S' using `#start_with?` which returns true or false if the provided arguments are the characters the calling string object starts with, if it does; the value calls `#upcase!` on itself, which capitalises all the characters within the original string and returns that as a result, given that `#upcase!` is destructive. Therefore when `#puts` is called on line 5 with the object referenced by array2 passed in as an argument it outputs "Moe", "Larry", "CURLY", SHEMP", "Harpo", "CHICO", "Groucho", "Zeppo".
