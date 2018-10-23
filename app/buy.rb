def asking_stock_ticker
  puts "What stock are you looking for?"
  user_input = gets.chomp
end

def asking_stock_quantity
  puts "Please enter the number of stocks"
  user_input = gets.chomp
end


def buy_stock
  stock = nil
  while stock == nil
    stock_ticker = asking_stock_ticker
    stock = Stock.find_by ticker: stock_ticker
    if stock == nil
      puts "Sorry we cannot find the stock you are looking for"
    end
  end
  quantity = 1000000000
  #getting the number of stocks
  #compare if $user.cash >= stock.value * quantity
            #
  while $user.cash < stock.value * quantity
    quantity = asking_stock_quantity.to_i
    if $user.cash < stock.value * quantity
      puts "Sorry you do not have enough money to execute this transaction"
    end
    $user.transactions << Transaction.create(number_of_stocks: quantity, stock_id: stock.id)
    $usre.stocks << stock
    user_cash_left = $user.cash - stock.value * quantity
    $user.update cash: user_cash_left
    puts "Congrtualations!!! You have bought #{quantity} of #{stock.ticker}"
  end

end
