require_relative '../config/environment'
$user = nil
def user_decision
  puts "Welcome to Trade0verFl0w"
  puts "Enter 1 if you want to sign up, or 2 if you want to sign in"
  user_input = gets.chomp
  user_input == "1" ? sign_up : sign_in
end

user_decision
