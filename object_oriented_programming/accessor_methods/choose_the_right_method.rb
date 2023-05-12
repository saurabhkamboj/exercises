# Add the appropriate accessor methods to the following code.

# Expected output:

# Jessica

class Person
  attr_accessor :name
  attr_writer :phone_number
end

# alternate

class Person
  def name=(name)
    @name = name
  end

  def name
    @name
  end

  def phone_number=(number)
    @phone_number = number
  end
end

person1 = Person.new
person1.name = 'Jessica'
person1.phone_number = '0123456789'
puts person1.name
