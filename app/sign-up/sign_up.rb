

def user_cash
  puts "How much money do you want to deposit?"
  user_cash = gets.chomp.to_i
end

def sign_up
  user_name = ""
  $user = nil
  while $user != nil || user_name.size < 5
    user_name = user_name_input
    $user = User.find_by user_name: user_name
    if $user != nil
      puts "The user name is already exist"
    end
    if user_name.size < 5
      puts "The user name must be more than 5 characters"
    end
  end

  user_password = ""
  while user_password.size < 5
    user_password = password_input
    if user_password.size < 5
      puts "Your password must contains at least 5 characters"
    end
  end

  cash = 0
  while cash < 1000
    cash = user_cash
    if cash < 1000
      puts "You must deposit at least $1000"
    end
  end

  $user = User.create(user_name: user_name, cash: cash, password: user_password)

  puts "Welcome to homepage"
  user_homepage
end
