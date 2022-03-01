def multiply(first_num, second_num)
  first_num.to_f * second_num.to_f
end

def divide(first_num, second_num)
  first_num.to_f / second_num.to_f
end

def substract(first_num, second_num)
  first_num.to_f - second_num.to_f
end

def add(first_num, second_num)
  first_num.to_f + second_num.to_f
end

def module_of(first_num, second_num)
  first_num.to_f % second_num.to_f
end

puts "Simple calculator"
20.times { print "-" }
puts "\nEnter the first number"
num_1 = gets.chomp
puts "Enter the second number"
num_2 = gets.chomp
puts "What do you want to do?"
puts "Choose an option:\n1 - Multiply\n2 - Addition\n3 - Substraction\n4 - Division\n5 - Module"
user_entry = gets.chomp

if user_entry == "1"
  puts "The first number multiplied by the second number is: %.2f " % [multiply(num_1, num_2)]
elsif user_entry == "2"
  puts "The first number added by the second number is: %.2f " % [add(num_1, num_2)]
elsif user_entry == "3"
  puts "The first number substracted by the second number is: %.2f " % [substract(num_1, num_2)]
elsif user_entry == "4"
  puts "The first number divided by the second number is: %.2f " % [divide(num_1, num_2)]
elsif user_entry == "5"
  puts "The first number module by the second number is: %.2f " % [module_of(num_1, num_2)]
else
  puts "Not a valid selection"
end
