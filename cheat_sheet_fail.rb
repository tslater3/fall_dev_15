#Pro tip  puts `man #{cmd}`

menu = """ 
    Cheat Sheet:
      
      1. Command Line
      2. Vim
      3. Pick a manual to read
      4. Quit
      Choose an option: """


  sub_menu = """ 
      Command Line Cheat Sheet:
      1. copy - cp - cp <source filename> <destination filename>
      2. move - mv - mv <source filename>
      3. make directory - mkdir - mkdir <directory name> 
      4. Output manual pages
      5. Quit
      Choose an option: """

loop do                                 # loop for main menu
  print menu
  main_input = gets.strip

  if main_input == '1'
    loop do                             # loop for sub menu
      print sub_menu
      sub_input = gets.strip
        case sub_input                  # case sub menu
          when '1' 
            print 'What file would you like to copy?'      # copies files and pastes to specified destination
            source_file = gets.strip
            print 'Please enter the destination:'
            destination = gets.strip
            `cp #{source_file} #{destination}`
          when '2'                                         # moves file to new destination
            print 'What file would you like to move?'
            source_file = gets.strip
            print 'Please enter the destination:'
            destination = gets.strip
            `mv #{source_file} #{destination}`
          when '3'                                         # creates a folder 
            print 'What folder would you like to create?'
            new_folder = gets.strip
            `mkdir #{new_folder}`
          when '4'                                         # search option for manual pages
            print 'What command would you like to read about?'
            read_option = gets.strip
            puts `man #{read_option}`          
        end
    break if sub_input == '5'                              # breaks sub loop
    end
  elsif main_input == '2'
    puts 'What file would you like to open in Vim?'
    user_file = gets.strip
    `vim #{user_file} /dev/tty`

  elsif main_input == '3'
    puts 'What command would you like to read?'
    read_option = gets.strip
    puts `man #{read_option}`
  end
  break if main_input == '4'                                # breaks main loop
end


      




 