#Taking user-user_password_input
require 'pry'
def user_name_input
puts "Please enter your username:"
user_input = gets.chomp
end
#Taking user password
def password_input
  system 'clear'
# puts "Please enter your password:"
# user_input = gets.chomp
prompt = TTY::Prompt.new
prompt.mask("Please enter your password:")
end



def sign_in
#  user_name = user_name_input
#  user = User.find_by user_name: user_name
  $user = nil
  while $user == nil
    user_name = user_name_input
    $user = User.find_by user_name: user_name
    if $user == nil
      system 'clear'
      puts "Cannot find your username"
    end
  end
  # binding.pry
  password = password_input
  while $user.password != password
    system 'clear'
    puts "Your password is invalid"
    password = password_input
  end
  system 'clear'

  puts "                  ================================"
  puts "                  |       Welcome to Homepage     |"
  puts "                  ================================"
  user_homepage

end
