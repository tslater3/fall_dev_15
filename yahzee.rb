require 'pry'

class Game
  attr_accessor :players

  def initialize
    @players = []
  end
  
  def display_menu
    while true
      puts """
      1. Choose players
      2. How to play
      3. quit
      """

      menu_choice = gets.chomp

      if menu_choice == '1'
        puts "Choose number of players: "
        num_players = gets.chomp.to_i

        num_players.times do 
          puts "What is your name?" 
          player_name = gets.chomp
          @players << Player.new(player_name)
          puts "\n"
          #binding.pry
        end

      game_begin
      #binding.pry

      #Call player method
      elsif menu_choice == '2'
        # <li><a href="http://www.hasbro.com/common/instruct/yahtzee.pdf">How to play</a></li> BROKEN!!!!
      elsif menu_choice == '3'
        exit
      else
        puts "I don't understand."
        display_menu
      end
    end
  end

  def game_begin
    @players.each do |player|
      puts "Player #{player.name} turn" #player.name is pulling name from initialize Player which I did in option 1. I can call .name on players.each
      turn
    end
  end


  def roll
    @first_roll_ary = []
    @roll_options = {'dice_1' => (1..6).to_a,
                     'dice_2' => (1..6).to_a,
                     'dice_3' => (1..6).to_a,
                     'dice_4' => (1..6).to_a,
                     'dice_5' => (1..6).to_a,
                    
    }
    @roll_options.keys.each do |dice|
      @first_roll = @roll_options[dice].sample
      @first_roll_ary << @first_roll
    end
    print "#{@first_roll_ary}\n"
    puts "Do you want to roll again? Y/N?\n"  
    roll_again = gets.chomp.downcase
    @roll1_ary = @first_roll_ary
    case roll_again
      when "y"
        # binding.pry
        puts "What numbers (separate choices with commas) would you like to roll again: "
        @first_roll_choices = gets.chomp
        @first_roll_choices = @first_roll_choices.split(",").map! {|i| i.to_i} 
        # binding.pry
        @roll1_ary = @first_roll_ary - @first_roll_choices
        true
      when "n"
        print @roll1_ary
        false
    end
    # binding.pry

  end

  def roll2
    @first_roll_choices.length.times do
      @second_roll = (1..6).to_a.sample
      @roll1_ary << @second_roll
    end
    
    print @roll1_ary
    puts "Do you want to roll again? Y/N?\n"
    roll_again2 = gets.chomp.downcase
    
    case roll_again2
      when 'y'
        puts "What numbers (separate choices with commas) would you like to roll again: "
        @second_roll_choices = gets.chomp
        @second_roll_choices = @second_roll_choices.split(",").map! {|i| i.to_i}
        @roll2_ary = @roll1_ary - @second_roll_choices
        true
      when 'n'
        print @roll1_ary
        false
    end
  end

  def roll3
    @second_roll_choices.length.times do
      @third_roll = (1..6).to_a.sample
      @roll2_ary << @third_roll
      puts "You got: "
      print "#{@roll2_ary}\n"
    end
  end

  def turn
    roll_again = roll
    roll_again = roll2 if roll_again
    roll3 if roll_again
  end
end


class Player
  attr_accessor :name, :scorecard, :total_score

  def initialize(name,total_score = 0)
    @name = name
    @total_score = total_score
    @scorecard = scorecard
  end

end
















game = Game.new
game.display_menu
