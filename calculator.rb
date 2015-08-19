#Modules
#require .Math

#Methods

def addition(num1, num2)
  num1 + num2
end

def subtraction(num1, num2)
  num1 - num2
end

def multiply(num1, num2)
  num1 * num2
end

def divide(num1, num2)
  num1 / num2
end

def mod(num1, num2)
  num1 % num2
end

def root(num1)
  Math.sqrt(num1)
end

def power(num1,num2)
  num1 ** num2
end

def end_check(input)
  if input == 'quit'
    return 0
  else
    return 1
  end
end


#Main Program
loop do 
  puts "Please input your desired operation or type quit"

  user_input = gets.chomp

  if end_check(user_input) == 1 || 2
    user_input = user_input.split(' ')
    user_input[0] = user_input[0].to_i
    user_input[2] = user_input[2].to_i
    if end_check(user_input) == 2
      user_input[0] = prev_value

    case user_input[1]

      when '+' 
      puts addition(user_input[0], user_input[2]) 

      when '-'
      puts subtraction(user_input[0], user_input[2])

      when '*'
      puts multiply(user_input[0], user_input[2])

      when '/' # 3 / 3 = 0?
      puts divide(user_input[0], user_input[2])

      when '%'
      puts mod(user_input[0], user_input[2])

      when 'sqrt'
      puts root(user_input[0])

      when '^'
      puts power(user_input[0], user_input[2])
    end
  end 
  break if end_check(user_input) == 0
 
end


