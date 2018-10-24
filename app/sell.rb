require 'pry'
def sell_stock
  #ask stock's ticker
  ticker = "a"
  #check user has that stock or not
    while !stock_list.keys.include?(ticker)
      ticker = asking_stock_ticker
      if !stock_list.keys.include?(ticker)
         puts "You do not have that stock"
       end
    end
  #if not, ask again
  #ask how many stock
  quantity = 1000000000
  #check user has enough stock or not
  while stock_list[ticker] < quantity
    quantity = asking_stock_quantity.to_i
    if stock_list[ticker] < quantity
       puts "You do not have enough stock"
     end
  end
  quantity = 0 - quantity
  stock = Stock.find_by ticker: ticker
  # binding.pry
  $user.transactions << Transaction.create(number_of_stocks: quantity, stock_id: stock.id)
  # $user.stocks << stock
  user_cash_left = $user.cash - stock.value * quantity
  $user.update cash: user_cash_left
  puts "Congrtualations!!! You have sell #{0 - quantity} of #{stock.ticker}"
end
