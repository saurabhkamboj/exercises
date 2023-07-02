# Consider the following class:

# Modify this class so both flip_switch and the setter method switch= are private methods.

# With further exploration

class Machine
  def start
    flip_switch(:on)
  end

  def stop
    flip_switch(:off)
  end

  def current_state
    puts "The fridge is #{switch}."
  end

  private

  attr_accessor :switch

  def flip_switch(desired_state)
    self.switch = desired_state
  end
end

fridge = Machine.new
fridge.start
fridge.current_state
fridge.stop
fridge.current_state
