# I need to create a variable with my first name
#first_name = 'Trevor'
# I need to create a variable with my last name
#last_name = 'Slater'
# I need to output my first and last name

# full_name = 'Trevor Slater'
# puts - outputs variable or data structure with a new line
# print - outputs variable or data structure without a new line

#puts first_name
#puts last_name

#print first_name
#print last_name

# double quotes is for interpolating a string which means using variables inside a string

#puts "#{first_name} #{last_name}"

# take user input 
# set first_name to user input
# output users first name
# chomp = ignores any trailing spaces will be ignored
# strip = strips leading or trailing space
 # print "Input your first name: "
 #first_name = gets.strip
 #puts "Hello #{first_name}"


# array allows for storage of many things in a variable

# Array of first name strings - (0 based (index) array)
#first_names = ['Jake', 'John', 'Joe']

# Push (add) a new value into the array
#first_names << 'Brit'

#puts first_names

#user_input = '2'
#case user_input
	#when '1'
		#puts 'List all contacts'
		#puts 'Some code here'
	#when '2'
		#puts 'the user input was 2'
	#else
		#puts 'I do not understand what you mean.'
#end

contact_array = ['Trevor', 'Joe', 'John', 'Mary']
user_contact_array = []




puts "Enter an option: 1 or 2"
puts "Option 1: List all contacts"
puts "Option 2: Create a new contact"
puts "Option 3: List all contacts by first name"
puts "Option 4: Edit a contact"
puts "Option 5: Store your first name, last name, and phone number"
puts "Option 6: Delete a contact"
user_input = gets.chomp

case user_input
	when '1'
		puts contact_array
	when '2'
		puts "What name would you like to add?"
		new_name = gets.chomp
		contact_array << user_input
		puts contact_array
	when '3'
		contact_array.each { |x| puts x}
		puts contact_array.sort
	when '4'
		puts contact_array
		puts "What name would you like to edit?"
		choose_name_edit = gets.chomp 
		contact_array.delete choose_name_edit
		puts "What is the corrected name?"
		correct_name = gets.chomp
		contact_array.push correct_name
		puts contact_array
	when '5'
		puts "What is your first name?"
		first_name = gets.chomp
		user_contact_array << first_name
		puts "What is your last name?"
		last_name = gets.chomp
		user_contact_array << last_name
		puts "And your phone number?"
		phone_number = gets.chomp
		user_contact_array << phone_number
		print user_contact_array
	when '6'
		puts contact_array
		puts "What name would you like to delete?"
		delete_name = gets.chomp
		contact_array.delete delete_name
		puts contact_array

end














# Contact List - First Names

# 1) Have an option to list all contacts
# 2) Have an option to create a new contact


# Bonus:
  #GOOGLE IT
  # 1) Have an option to sort contacts by first name
  # 2) Have an option to edit a contact
  # 3) Store first name, last name, phone number
  # 4) Have an option to Delete a contact (google: remove from ruby array)











