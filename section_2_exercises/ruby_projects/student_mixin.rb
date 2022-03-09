require_relative 'crud'

class Student include Crud
  attr_accessor :first_name, :last_name, :email, :username, :password

  @first_name
  @last_name
  @email
  @username
  @password

  def to_s
    "First name: #{@first_name}, Last name: #{@last_name}, Email: #{@email}, Username: #{@username}, Password: #{@password}"
  end

  def initialize(firstname, lastname, email, username, password)
    @first_name = firstname
    @last_name = lastname
    @email = email
    @username = username
    @password = password
  end
end

noel = Student.new("Noel", "Juan", "noel.chavero@enroutesystems.com", "noel1", "password1")
puts noel

hashed_password = noel.create_hash_digest(noel.password)
puts hashed_password
