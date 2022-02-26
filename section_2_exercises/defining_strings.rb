first_name = "Noel"
last_name = "Juan"

#Concatenation
puts first_name + " " + last_name

#Interpolation
puts "My first name is #{first_name} and my last name is #{last_name}"
# this not allow the '#{}' notation
puts 'My first name is #{first_name} and my last name is #{last_name}'

full_name = "#{first_name} #{last_name}"

#Everything is an object
if (10.class == Integer)
    puts "10 is an Integer"
end

if ("10".class == String)
    puts "\"10\" is a String"
end

#Method Chaining
p 10.to_s.class

#Some String methods examples
puts full_name.reverse
puts "\n\"\".empty? = " + "".empty?.to_s
puts "\"\".nil? = " + "".nil?.to_s
puts "nil.nil? = " + nil.nil?.to_s

sentence = "Welcome to the jungle"
sentence = sentence.sub("the jungle", "Enroute")
puts sentence
puts sentence.count("e")
sentence = sentence.gsub("e", "3")
puts sentence
puts sentence.count("e")

puts sentence.upcase!
puts sentence.capitalize!

result = sentence.split("t")
puts result

enumerator = sentence.enum_for(:each_byte)
for value in enumerator do
    print value.chr + "_"
end

puts "\nthe first char in sentence is " + sentence.chr

foo_sentence = "foo"
puts "\nfoo: " + foo_sentence + ", length: " + foo_sentence.length.to_s
puts "foo after clear method: " +foo_sentence.clear + ", length: " + foo_sentence.length.to_s


'foo'.casecmp('foo')
'foo'.casecmp('foOd')
'food'.casecmp('foo')

puts sentence.rindex("o") #=> 14

new_first_name = first_name
first_name = "other name"
puts "\n" + first_name
puts new_first_name
puts "new_first_name value remains to the original value reference in memory,\neven after new assignment first_name"
