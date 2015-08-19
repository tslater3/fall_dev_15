
# Menu 

main_menu = """
      Want to play a game?

      1. Choose Rock
      2. Choose Paper
      3. Choose Scissors 
      4. Quit
      Please select a choice: """

choice_array = [1, 2, 3]


# Methods
def error_check(input)
  if input >= 1 || input <= 4
    return 1
  else
    return 0
  end
end


# Main program
user_wins = 0
comp_wins = 0 
draws = 0


loop do                                
  print main_menu
  user_input = gets.strip.to_i
  comp_input = choice_array.sample
  

  if error_check(user_input) == 1
    puts "Your choice: #{user_input}"
    puts "Computer choice: #{comp_input}"
    if user_input == comp_input
      puts 'It\'s a draw' 
      draws += 1
    elsif (user_input == 1 && comp_input == 3 || user_input == 2 && comp_input == 1 || user_input == 3 && comp_input == 2)
      puts 'User wins!'
      user_wins += 1
    else
    puts 'Computer wins!'
    comp_wins += 1
    end

    """ 
    user_wins #{user_wins}
    comp_wins #{comp_wins}
    draws #{draws} """
  else
    puts 'Error: Invalid input'
  end


   
    break if user_input == 4 || error_check(0)
end




