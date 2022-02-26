#Simple "Hello World" Print
print "Hello World\n"
puts "Hello World"
p "Hello World"

#Using variables 
greeting = "Hello Enroute!"
puts greeting

#Defining methods
def say_hello(stranger)
    puts "Hello %s from a method!" % [stranger]
end
#Invoking methods
say_hello "Enroute"

