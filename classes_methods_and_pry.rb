require "pry"

module MammalActions
  def eat(food)
    puts "Eating #{food}"
  end

  def sleep(hours = 8)
    puts "#{self.name} slept #{hours} hours"
  end

  def fight(mammal1)
  puts "#{self.name} is fighting #{mammal1.name}"
  end

  def talk(message)
    puts message
  end
end

class Cat
  include MammalActions #Makes module MammalActions accessible in class Cat
  attr_accessor :name, :fur_color, :age #attr_accessor tells you what you can do in the instance

  def initialize(name, fur_color, age) #doesn't have to be that but if you want those to be dynamic it does, if you didn't list one here and made a variable hard coded it would always be that value
    @name = name
    @fur_color = fur_color
    @age = age
  end

  def self.talk #self makes this a class method
    puts "MEOW!"
  end

  
end

class Human
  include MammalActions
  attr_accessor :name, :hair_color, :gender, :age

  def initialize(name, hair_color, gender, age)
    @name = name
    @hair_color = hair_color
    @gender = gender
    @age = age
  end

  def work(task)
    puts "#{self.name} doing #{task}"
  end
end

trevor = Human.new('Trevor', 'Brown', 'Male', 28)
jax = Cat.new('Jax', 'black', 2)
binding.pry
# jax = Cat.new('Jax', 'Black and White', 1) #arguments are instance variables
# kali = Cat.new('Kali', 'Gray and White', 6)

# # puts jax.fur_color
# # puts kali.age
# binding.pry
# puts jax.talk("I'm cool.")
# puts Cat.talk
