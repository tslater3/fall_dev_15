
@main_menu = {
  '1' => ['Command line'],
  '2' => ['Vim'],
  '3' => ['Search for a manual page'],
  '4' => ['quit']  
}

@main_menu.length.times do |item|
  puts "#{@main_menu.keys[item]}. #{@main_menu.values[item][0]}"
end

main_input = gets.chomp 
# create a class of methods?

  def error_check
    @main_menu.length.times do |item|
    puts "#{@main_menu.keys[item]}. #{@main_menu.values[item][0]}"
  end
  end

  if main_input == '1' || main_input == 'Command line'
   @command_line
  elsif main_input == '2' || main_input == 'Vim'
    puts `man vim`
  elsif main_input == '3' || main_input == 'Search'
    puts "What command would you like to read?"
    user_option = gets.strip
    puts `man #{user_option}`
    exit
  elsif main_input == '4' || main_input == 'Quit'
    exit
  else # Need some type of option for if they don't choose a valid option
    error_check
  end

@command_line = {
  '1' => ['copy', 'cp', 'cp <source filename> <destination filename>' ],
  '2' => ['move', 'mv', 'mv <source filename> <destination filename>' ],
  '3' => ['make directory', 'mkdir', 'mkdir <directory name> '],
  '4' => ['quit']
}
puts "Which method would you like to read up on?"

@command_line.length.times do |choice_number| 
  puts "#{(choice_number + 1).to_s}. #{@command_line[(choice_number + 1).to_s][0]}
  - #{@command_line[(choice_number + 1).to_s][1]}
  - #{@command_line[(choice_number + 1).to_s][2]}"
end
command_input = gets.chomp

  if command_input == '1'
    print "Printing manual on copy"
    puts `man cp`
  elsif command_input == '2'
    print "Printing manual on move"
    puts `man mv`
  elsif command_input == '3'
    print "Printing manual on mkdir"
    puts `man mkdir`
  elsif command_input == '4'
    exit
  else #Doesn't work, reprints @command_line then exits the program
  @command_line.length.times do |choice_number| 
    puts "#{(choice_number + 1).to_s}. #{@command_line[(choice_number + 1).to_s][0]}
    - #{@command_line[(choice_number + 1).to_s][1]}
    - #{@command_line[(choice_number + 1).to_s][2]}"
end
end

# Upgrade your cheat sheet with hashes and arrays!


# Let's return to your cheat sheet and make some modifications...

# As it is right now, your cheat sheet data is probably organized with long strings that contain a brief description of commands, the actual commands and an example usage. For example:

#   '1. move - mv - mv <filename> <destination_location>'

# Instead of hard coding all of these long strings, we are going to store all of the information into hashes. You should create a hash for each choice on the main menu ( command line, vim, sublime shortcuts ). The key can be the number of the choice or it can be the description or actual command. The value should be an array that will contain the rest of the information. 
  
#   For example:
    
#     @command_line = {
#       '1' => ['mv', 'move', 'mv <filename> <destination location>'],
#       '2' => ['mkdir', 'make a new directory', 'mkdir <new directory name>'],
#       '3' => ['ls', 'list contents of current directory', 'ls <options>']

#     }

# Once you have your hash that contains all of your information for that menu, you should change your code so that you are referencing the hash and displaying the information from the hash.

#   For Example:

#     To print out the command line menu...

#     @command_line.length.times do |choice_number|                                          
#       puts "#{(choice_number + 1).to_s}. #{@command_line[(choice_number + 1).to_s][0]} 
#       - #{@command_line[(choice_number + 1).to_s][1]}
#       - #{@command_line[(choice_number + 1).to_s][2]}"
#     end

# Now, when you want to add to the menu, all you need to do is add to the @command_line hash.

# Repeat the same process with the vim sub menu and create a new sub menu for sublime shortcuts.

# Include at least five items in each of the sub menus.

# Bonus:
  
#   - make the command line menu man page functionality work by referencing the hash.




# #  