name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# prints
# BOB
# BOB

# When we created the variable save_name, we pointed it to the object associated with name, because #upcase! mutates an object and returns the same object, the object associated with save_name remains the same as name.
