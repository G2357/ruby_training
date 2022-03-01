puts "Simple calculator"
20.times { print "-" }
puts "\nEnter the first number"
num_1 = gets.chomp
puts "Enter the second number"
num_2 = gets.chomp
puts "\nMULTIPLY"
puts "The first number multiplied by the second number is %d" % [num_1.to_i * num_2.to_i]

puts "\nADDITION"
puts "The first number added to the second number is %d" % [num_1.to_i + num_2.to_i]

puts "\nSUBSTRACTION"
puts "The first number substracted by the second number is %d" % [num_1.to_i - num_2.to_i]

puts "\nDIVIDED"
puts "The first number divided by the second number is %f" % [num_1.to_f / num_2.to_f]

puts "\nMODULUS"
puts "The modulus of first number divided by the second number is %d" % [num_1.to_f % num_2.to_f]
