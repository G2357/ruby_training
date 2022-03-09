sample_hash = { "a" => 1, "b" => 2, "c" => 3 }
my_details = { "name" => "Noel", "favcolor" => "red" }
p my_details["favcolor"]
p sample_hash["b"]

# Hash using "Symbols" as keys
another_hash = { a: 1, b: 2, c: 3 }
p another_hash[:a]

p another_hash.keys
p another_hash.values

sample_hash.each do |key, value|
  puts "The class for key is #{key.class} and the value is #{value}"
end

another_hash.each do |key, value|
  puts "The class for key is #{key.class} and the value is #{value}"
end

new_hash = { a: 1, b: 2, c: 3 }
new_hash[:e] = "new content"
p new_hash
new_hash.each { |some_key, some_value| puts "The key %s has %s as value" % [some_key, some_value] }

filtered_hash = new_hash.select { |k, v| v.is_a?(String) }
p filtered_hash

# When the key is deleted it means delete the entry on the hash
new_hash.each { |k, v| new_hash.delete(k) if v.is_a?(String) }
p new_hash
