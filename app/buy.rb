require 'pry'
def asking_stock_ticker
  puts "What stock are you looking for?"
  user_input = gets.chomp.upcase
end

def asking_stock_quantity
  puts "Please enter the number of stocks"
  user_input = gets.chomp.to_i
end


def buy_stock

 ticker = ""
 stock = nil
 while stock == nil
   ticker = asking_stock_ticker
   stock = Stock.find_by ticker: ticker
   if stock != nil
     puts "#{ticker} currently is $#{stock_price(ticker)}"
   else
     begin
       IEX::Resources::Quote.get(ticker)
     rescue
       puts "Sorry we cannot find the stock you are looking for"
     else
       stock = Stock.create(ticker: ticker)
       puts "#{ticker} currently is $#{stock_price(ticker)}"
     end
   end
 end

 quantity = 1000000000
 #getting the number of stocks
 #compare if $user.cash >= stock_price(ticker) * quantity
           #
 while $user.cash < stock_price(ticker) * quantity
   quantity = asking_stock_quantity
   if $user.cash < stock_price(ticker) * quantity
     puts "Sorry you do not have enough money to execute this transaction"
   end
 end


 transactions_hash = {number_of_stocks: quantity, stock_id: stock.id,
   executed_price: stock_price(ticker), time: get_time(ticker)}
 $user.transactions << Transaction.create(transactions_hash)
 # $user.stocks << stock
 user_cash_left = $user.cash - transactions_hash[:executed_price] * quantity
 $user.update cash: user_cash_left
 puts "Congrtualations!!! You have bought #{quantity} of #{stock.ticker}"


end
