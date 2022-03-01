puts "What is your first name?"
first_name = gets.chomp
puts "What is your last name?"
last_name = gets.chomp

full_name = first_name.strip + " " + last_name.strip

puts "Your full name is %s" % [full_name]
puts "Your full name reversed is %s" % [full_name.reverse]
puts "Your name has %d characters in it" % [full_name.gsub(/\s+/, "").length]
