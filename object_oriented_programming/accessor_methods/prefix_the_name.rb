# Using the following code, add the appropriate accessor methods so that @name is returned with the added prefix 'Mr.'.

# Expected output:

# Mr. James

class Person
  attr_reader :name

  def name=(name)
    @name = "Mr. " + name
  end
end

# Alternate 1

class Person
  attr_reader :name

  def name=(name)
    @name = "Mr. #{name}"
  end
end

# Alternate 2

class Person
  attr_reader :name

  def name=(name)
    @name = "Mr. ".concat(name)
  end
end

person1 = Person.new
person1.name = 'James'
puts person1.name
