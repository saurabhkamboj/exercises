# Documentation Again

1. Both the methods can be found in the documentation here <https://ruby-doc.org/core-2.7.5/File.html>

    `File::path` indicates that `path` is a method for the class `File` and `File#path` indicates that `path` is an instance method for an object of the `File` class.

2. `puts Date.civil` => -4712-01-01

   `puts Date.civil(2016)` => 2016-01-01

   `puts Date.civil(2016, 5)` => 2016-05-01

   `puts Date.civil(2016, 5, 13)` => 2016-05-13

3. prints [4, 5, 3, 6]
4. a = [1, 4, 8, 11, 15, 19]

    `a.bsearch { |x| x > 8 }`

5. a = %w(a b c d e)

    `puts a.fetch(7)` => IndexError, shows an index error because the index referenced is outside of the array bounds.

    `puts a.fetch(7, 'beats me')` => Beats me, prints the second argument given that the first argument references an index that is outside of the array bounds.

    `puts a.fetch(7) { |index| index**2 }` => 49, executes the block because the index referenced is invalid.

6. 5

    8

7. p s.public_methods(false).inspect
8. Document for `#min` method <https://ruby-doc.org/core-2.7.5/Array.html#method-i-min>

    Code to find the two smallest values in the array `puts a.min(2)`

9. <https://ruby-doc.org/stdlib/libdoc/psych/rdoc/Psych.html>
