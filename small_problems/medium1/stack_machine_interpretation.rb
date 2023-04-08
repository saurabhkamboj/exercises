=begin
  # Important points
    - In ruby, a stack can be easily implemented using an Array that uses the `#pop`and `#push` methods.
    - A stack and register programming language is a language that uses a stack of values/
    - All operations operate on a 'register' which is the current value.
    - The register is not a part of the stack.
    - Any operation that requires two values pops the topmost element from the stack, and performs the operation using the poped value and the register value, the result of this operation is stored back in the register

    n Place a value n in the "register". Do not modify the stack.
    PUSH Push the register value on to the stack. Leave the value in the register.
    ADD Pops a value from the stack and adds it to the register value, storing the result in the register.
    SUB Pops a value from the stack and subtracts it from the register value, storing the result in the register.
    MULT Pops a value from the stack and multiplies it by the register value, storing the result in the register.
    DIV Pops a value from the stack and divides it into the register value, storing the integer result in the register.
    MOD Pops a value from the stack and divides it into the register value, storing the integer remainder of the division in the register.
    POP Remove the topmost item from the stack and place in register
    PRINT Print the register value
  
    # Problem
      - Call `#split` on the string object passed in as an argument to the invocation of `minilang'
      - Iterate over elements of the array returned by calling of `#split`
      - Use a conditional to interpret the value of the object at the current iteration
      - Perform an operation based on the value

      - A variable `stack` has to be intialised with an empty array object assigned to it or can also use #each_with_object to iterate over the array returned by calling of `#split`.
      - `register` has to assigned an interger object with value 0 at the start of the method's definition
    
    # Algorithm
      - Initialise `register` with the integer object with value 0 assigned to it.
      - call `#each_with_object` on the return value of calling of `#split` on the string object referenced by parameter with an empty array passed into it as an argument for the memo object.
      - case parameter
        - when n then register = n
        - when PUSH then stack.push(register)
        - when ADD then register += stack.pop
        - when SUB then register -= stack.pop
        - when MULT then register *= stack.pop
        - when DIV then register /= stack.pop
        - when MOD then register %= stack.pop
        - when POP then register = stack.pop
        - when PRINT then puts register
=end

def minilang(str)
  register = 0

  str.split.each_with_object([]) do |command, stack|
    case command
    when 'ADD' then register += stack.pop
    when 'SUB' then register -= stack.pop
    when 'MULT' then register *= stack.pop
    when 'DIV' then register /= stack.pop
    when 'MOD' then register %= stack.pop
    when 'PUSH' then stack.push(register)
    when 'POP' then register = stack.pop
    when 'PRINT' then puts register
    else
      register = command.to_i
    end
  end
end

minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')
# (nothing printed; no PRINT commands)
