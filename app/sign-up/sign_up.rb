# def user_name_input
# puts "Please enter your username"
# user_input = gets.chomp
# end
#
# def user_password_input
#   puts "Please enter your password"
# password_input = gets.chomp
# end

def user_cash
  puts "How much money do you want to deposit?"
  user_cash = gets.chomp
end

def sign_up
  user_name = 0
  user = 0
  while user != nil
    user_name = user_name_input
    user = User.find_by user_name: user_name
    if user != nil
      puts "The user name is already exist"
    end
  end

  user_password = password_input
  cash = user_cash

  User.create(user_name: user_name, cash: cash, password: user_password)

  puts "Welcome to homepage"
end
