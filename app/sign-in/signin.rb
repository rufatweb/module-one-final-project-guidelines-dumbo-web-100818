
def user_name_input
puts "Please enter your username"
user_input = gets.chomp
end

def password_input
puts "Please enter your password"
user_input = gets.chomp
end

def sign_in
user_name = user_name_input
user = User.find_by user_name: user_name
while user == nil
  user_name = user_name_input
  user = User.find_by user_name: user_name
end
password = password_input
while user.password != password
password = password_input
end
end
