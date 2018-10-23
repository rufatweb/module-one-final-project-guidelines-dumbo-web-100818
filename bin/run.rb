require_relative '../config/environment'



puts "Welcome to Trade0verFl0w"

puts "Type 1 to sign-up, type 2 to sign-in"

user_input = gets.chomp

def get_user_name
  p "What is your user name?"
  user_input = gets.chomp
end

def get_user_password
  p "What is your password"
  user_input = gets.chomp
end

def sign_in
  if get_user_name = ....
    get_user_password
  else
    p "Cannot find your user name, please do it again"
    get_user_name
end
