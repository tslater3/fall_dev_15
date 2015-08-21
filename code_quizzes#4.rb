counter = 0
array = ["fat", "bat", "rat"]
while counter < array.length
  puts array[counter] + "-land"
  counter += 1
end

snowy_owl = { "type" => "Bird", "diet" => "Carnivore", "life_span" => "10 years" }

What does the following code return?

snowy_owl = {
  "type"=>"Bird",
  "diet"=>"Carnivore",
  "life_span"=>"10 years"
}
snowy_owl.select do |key, value|
  key == "type"
end
{"type"=>"Bird"}
The select() method is used to find the key/value pair with the key equal to "type".

first_names.each do |first_name|
  result.push

personality_types = ["bad", "good", "great"]
Iterate through personality_types and construct this array:

["bad person", "good person", "great person"]

personality_types.map { |type| type + " person" }

lebron[:sport]
lebron[:high_school] = "St. Vincent-St. Mary High School"

lebron.keys
lebron.values

a = array.new()
a.push(String.new("fun"))
a.push(String.new("games"))

spot = Dog.new()
spot.speak

class Pneguin
  def looks()
    return(String.new("We are cute!"))
  end
end


class Calculator
  def self.add(x, y)
    return(x + y)
  end
end

puts Calculator.add(3, 4)

#could also do it this way 
