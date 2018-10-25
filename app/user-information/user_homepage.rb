
def user_homepage
  prompt = TTY::Prompt.new
  options = ["Check Cash Balance",
              "Deposit Money",
              "Check Stock Holding",
              "Check Portfolio",
              "Search Stock",
              "Buy Stock",
              "Sell Stock",
               "Log Out"]
  resp = prompt.select("Please select from one of the following?", options)

  case resp
  when "Check Cash Balance"
    system 'clear'
    puts "Your current cash balance is $#{$user.cash.round(2)}"
    back_to_homepage
  when "Deposit Money"
    system 'clear'
    deposit_money
    back_to_homepage
  when "Check Stock Holding"
    system 'clear'
    stock_holding
    back_to_homepage
  when "Check Portfolio"
    system 'clear'
    user_portfolio
    back_to_homepage
  when "Search Stock"
    system 'clear'
    stock_searching
    back_to_homepage
  when "Buy Stock"
    system 'clear'
    buy_stock
    back_to_homepage
  when "Sell Stock"
    system 'clear'
    sell_stock
    back_to_homepage
  when "Log Out"
    system 'clear'
    home_screen
  end

end

def back_to_homepage
  prompt = TTY::Prompt.new
  resp = prompt.select("Please select from one of the following?", ["Return to homepage", "Log out"])
  case resp
  when "Return to homepage"
    system 'clear'
    user_homepage
  when "Log out"
    system 'clear'
    home_screen
  end
end

def deposit_money
  cash = 0
while cash < 500
  cash = user_cash.to_i
  system 'clear'
  if cash < 500
    puts "You must deposit at least $1000"
  end
end

  $user.cash += cash
end
