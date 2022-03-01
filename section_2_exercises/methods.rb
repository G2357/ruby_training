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

puts "Enter your first number"
first_num = gets.chomp
puts "Enter your first number"
second_num = gets.chomp

puts "The first number multiplied by the second number is: %.2f " % [multiply(first_num, second_num)]
puts "The first number divided by the second number is: %.2f " % [divide(first_num, second_num)]
puts "The first number substracted by the second number is: %.2f " % [substract(first_num, second_num)]
puts "The first number added by the second number is: %.2f " % [add(first_num, second_num)]
puts "The first number module by the second number is: %.2f " % [module_of(first_num, second_num)]
