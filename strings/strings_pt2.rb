# How to get input from a user
puts "what is your firstname?"
# we can use gets.chomp and store it in a variable to capture the user input
first_name = gets.chomp

puts "Thank you! You're first name is #{first_name}"


# watchout for concatination
puts "Enter a number to multiply by 2"
input = gets.chomp
# convert the string to an integer by using the string method .to_i
puts input.to_i * 2