puts "What is your first name?"
first_name = gets.chomp
puts "What is your last name?"
last_name = gets.chomp
puts "Thank you %s %s, hello there!" % [first_name, last_name]

puts "Enter a number to multiply by 2"
input = gets.chomp
puts input.to_i * 2
