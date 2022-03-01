a = [1, 2, 3, 4, 5, 6, 7, 8, 9]
p a

x = 1..100
puts x.class == Range # = true
puts x.to_a.class == Array # = true

# Although the ! marks to execute "on self as return" (mutating); the method
# is being executed on the result of to_a method which returns the array as
# a new object itself, so the OG range it's not mutated
p x.to_a.shuffle!
puts x

z = (1..10).to_a
z.reverse!
p z

alphabet = ("a".."z").to_a
puts alphabet.length # length = 26

p a << 10 # adds element to the end of array
p a.unshift(0) # adds element to the beginning of array
p a.append(11) # adds element to the end of array
p a.append(11)
p a.uniq
p a

p a.include?(11) # = true

stack = ("a".."f").to_a
# use an array as LIFO stack
p stack.push("g")
element = stack.pop
puts element
p stack
joined = stack.join("-")
puts joined

p joined.split("-")

words = %w(a new string chain used to generate a new array)
p words

# iterating over array:
# The more "traditional" syntax
for element in words
  print element + " "
end
puts

# Using "each" method
words.each do |item|
  print item + " "
end
puts

# Syntax the more "Ruby way"
words.each { |item| print item + " " }
puts

numbers = (1..100).to_a.shuffle
odds = numbers.select { |number| number.odd? }
p odds
