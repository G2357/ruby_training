dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717",
}

# Get city names from the hash
def get_city_names(somehash)
  somehash.keys
end

# Get area code based on given hash and key
def get_area_code(somehash, key)
  somehash[key]
end

# Execution flow
loop do
  puts "do you want to lookup an area code based on a city name?(Y/N)"
  continue = gets.chomp.downcase
  break if continue != "y"

  puts "Which city do you want the area code for?"
  puts get_city_names(dial_book)
  puts "Enter your selection"
  option = gets.chomp
  result = get_area_code(dial_book, option)
  if result # Use of 'falsey' result validation (nil is evaluated as 'false' by default)
    puts "The area code for #{option} is #{result}"
  else
    puts "No area code related to the %s city" % [option]
  end
end
