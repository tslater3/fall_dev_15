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
      4. Quit
      Choose an option: """

loop do                                # loop for main menu
  print menu
  main_input = gets.strip

  if main_input == '1'
    loop do                             # loop for sub menu
      print sub_menu
      sub_input = gets.strip
        case sub_input                  # sub menu case
          when '1'                      # 
            print 'Man page on copy'
            puts `man cp`
          when '2'
            print 'Man page on move'
            puts `man mv`
          when '3'
            print 'Man page on make director'
            puts `man mkdir`         
        end
    break if sub_input == '4'
    end
  elsif main_input == '2'
    puts 'Man page on Vim'
    puts `man vim`

  elsif main_input == '3'
    puts 'What command would you like to read?'
    read_option = gets.strip
    puts `man #{read_option}`
  end
  break if main_input == '4'
end


      




 