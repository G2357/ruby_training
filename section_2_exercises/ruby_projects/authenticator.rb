# Notation to instance variables
@users = [
  { username: "noel", password: "password1" },
  { username: "john", password: "password2" },
  { username: "silvia", password: "password3" },
  { username: "martha", password: "password4" },
]

def is_user_valid?(username, password)
  @users.any? { |user| user[:username] == username && user[:password] == password }
end

def should_continue?
  puts "Press n to quit or any other key to continue:"
  input = gets.chomp
  input != "n"
end

puts "Welcome to the authenticator"
20.times { print "-" }
puts "\nThis program will take input from the user and compare password"
puts "If the password is correct, you will get back the user object"

continue = true
tries = 0
while continue
  print "Username: "
  input_username = gets.chomp
  print "Password: "
  input_password = gets.chomp

  if is_user_valid?(input_username, input_password)
    p @users.find { |user| user[:username] == input_username }
  else
    puts "Credentials were not correct"
    tries += 1
  end
  continue = should_continue?
  if tries > 3
    puts "You have exceeded the number of attempts"
    continue = false
  end
end
