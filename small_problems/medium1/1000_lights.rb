# You have a bank of switches before you, numbered from 1 to n. Each switch is connected to exactly one light that is initially off. You walk down the row of switches and toggle every one of them. You go back to the beginning, and on this second pass, you toggle switches 2, 4, 6, and so on. On the third pass, you go back again to the beginning and toggle switches 3, 6, 9, and so on. You repeat this process and keep going until you have been through n repetitions.

# Write a method that takes one argument, the total number of switches, and returns an Array that identifies which lights are on after n repetitions.

# Example with n = 5 lights:

# round 1: every light is turned on
# round 2: lights 2 and 4 are now off; 1, 3, 5 are on
# round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
# round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
# round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
# The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].

# With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].

=begin
  Problem
    - determine which lights are on after n repretitions where n is values 1..(total number of switches), on each repitition if the number corresponding to the light is a multiple of n the light is turned ON if OFF and OFF if ON.
    - input => integer, Output => array
    - note => Each light is initially off
  Example
    - lights_on(5) => [1, 4]
    - lights_on(10) => [1, 4, 9]
  Data structure
    - 
  Algorithm
    - initiate a lights_hash
    - 
  Questions?
    - create a separate array for ON and OFF lights? Which are populated or depopulated on each iteration
      - can use Array#delete to remove the number and Array#<< to append the return value
      - an use Array#sort in the end to return the desired order
    - use nested arrays? Where the element at index 0 contains the n value and element at index 1 contains ON or OFF values.
    - can also use hash, where the key represents light and value represents the state (ON/OFF)
=end

def initiate_lights_hash(n)
  hash = {}
  1.upto(n) { |i| hash[i] = 'off' }
  hash
end

def display_on_lights(n)
  lights_hash = initiate_lights_hash(n)
  1.upto(n) do |i|
    lights_hash.each do |key, value|
      if (key % i == 0)
        lights_hash[key] = (value == 'off' ? 'on' : 'off')
      end
    end
  end
  
  lights_hash
end

p display_on_lights(5)
p display_on_lights(10)
