require_relative '../config/environment'
$user = nil

puts "Welcome to Trade0verFl0w"

def asking_option
  puts "Enter 1 if you want to sign up, or 2 if you want to sign in"
  user_input = gets.chomp
end


def user_decision
  user_input = 0
  while user_input != "1" && "2"
    user_input = asking_option
  end

  user_input == "1" ? sign_up : sign_in
end

user_decision
