def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

# The returned string will not be same object as the one passed in as an argument given that `#each` was called on a new object returned by the calling of `#split` on the string object referenced by the caller `str`. Also, `#join` too returns a new string object when called on the array returned by `#each` which even though was the original array returned `#split`.

# by launch school:

# Your initial hunch might have been that the method will return the same string object. Since we are using mutating method String#reverse! inside of the do..end block, and we are also calling each method on the resulting array, which also returns the original array.

# However, as soon as we have converted string into an array by calling split method on it, it is no longer possible for us to get back the original object again. Even just doing str.split.join(" ") returns a different object since you are splitting the string into an array and then joining that array back into a new string, with the same sequence of characters but still, a different object.

# Let's also break down what happens inside of the spin_me method. str.split converts the string into array ['hello', 'world']. When we call each method on this array and reverse each word inside of the array, our original array gets mutated and now it's values are ['olleh', 'dlrow'].

# So we have mutated the array that we got by splitting the string, but, when we join this array back into a string, a completely new string is returned.

# You can check this by calling Object#object_id method.
