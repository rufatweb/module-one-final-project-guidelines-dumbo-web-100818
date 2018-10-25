
require 'pry'
def user_cash
    puts "How much money do you want to deposit?"
    cash = gets.chomp
end

def sign_up
  user_name = ""
  $user = nil
  while $user != nil || user_name.size < 5 || user_name.index(" ")
    user_name = user_name_input
    $user = User.find_by user_name: user_name
    if $user != nil
      system 'clear'
      puts "The user name is already exist"
    elsif user_name.size < 5
      system 'clear'
      puts "The user name must be more than 5 characters"
    elsif user_name.index(" ")
      system 'clear'
      puts "The user name cannot contains any space"
    end
  end

  user_password = ""
  while user_password == nil || user_password.index(" ") || user_password.size < 5
    user_password = password_input


    if user_password == nil
      puts "Your password cannot be empty"
    elsif user_password.size < 5
      puts "Your password must contains at least 5 characters"
    elsif user_password.index(" ")
      puts "Your password cannot has any space"
    end
  end

  cash = 0
  while cash < 1000
    cash = user_cash.to_i
    system 'clear'
    if cash < 1000
      puts "You must deposit at least $1000"
    end

  end

  $user = User.create(user_name: user_name, cash: cash, password: user_password, deposit: cash)

  puts "Welcome to homepage"
  user_homepage
end
