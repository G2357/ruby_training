# Option to use on same directory module requirements
require_relative "crud"
 
# ... if not and the module is on the same path the notation is as follows
# $LOAD_PATH << "."
# require 'crud'

users = [
  { username: "noel", password: "password1" },
  { username: "john", password: "password2" },
  { username: "silvia", password: "password3" },
  { username: "martha", password: "password4" },
]

hashed_users = Crud.create_secure_users(users)
puts hashed_users