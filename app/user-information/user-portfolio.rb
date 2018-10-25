def user_portfolio
  puts "                  ================================"
  puts "                  |           PORTFOLIO          |"
  puts "                  ================================"
  puts ""
  puts ""
  puts ""
  puts "                              $#{portfolio_value.round(2)}"
  puts ""
  puts "                               #{percentage_change.round(2)}%"
  puts ""
  puts ""
  puts "#{stock_holding}"
  puts ""
  back_to_homepage
end

def stocks_values
  stock_value = 0
  stock_list.each do |ticker, num|
   stock_value += stock_price(ticker) * num
  end
  stock_value
end

def portfolio_value
  $user.cash + stocks_values
end

def percentage_change
(portfolio_value - $user.deposit)/$user.deposit * 100



end
