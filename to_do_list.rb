require 'pry'

class List
  attr_accessor :name, :item_array 

  def initialize(name)
    @name = name
    @item_array = []
  end

  def display_menu
    loop do
      puts """
      What would you like to do?
        1. Display List
        2. Add item
        3. Remove item
        4. Mark an item complete
        5. exit
        """
      choice = gets.chomp
      if choice == '1'
        display_list
      elsif choice == '2'
        puts 'Name of list item: '
        item_name = gets.chomp
        puts 'Add a description: '
        description = gets.chomp
        add_item(item_name, description)
      elsif choice == '3'
          puts " "
          display_list
          print 'Which item would you like to remove? Please enter the number corresponding to the item line: '
          remove_choice = gets.chomp.to_i
          remove = remove_choice - 1
          @item_array.delete_at(remove)

      elsif choice == '4'
        display_list
        print 'Which item did you complete? Please enter the number corresponding to the item line you completed: '
        display_choice = gets.chomp.to_i
        display = display_choice - 1
        puts "Completed: #{@item_array[display].item_name}!"
          
      elsif choice == '5'
        puts "Goodbye"
      else
        puts "Sorry, Me Don't Understand"
      end
    break if choice == '5'
    end
  end

  def add_item(name, anything)
    @item_array << Item.new(name, anything)

  end

  def display_list
    @item_array.each do |item|
      puts item.item_name + ' -- ' + item.description
    end
  end
end





class Item
  attr_accessor :item_name, :description

  def initialize(item_name, description)
    @item_name = item_name
    @description = description
  end

end


 binding.pry