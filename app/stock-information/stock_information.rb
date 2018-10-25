def stock_price(ticker)
  IEX::Resources::Quote.get(ticker)["latest_price"]
end

def get_time(ticker)
  IEX::Resources::Quote.get(ticker)["latest_update_t"]
end

def stock_holding
  if stock_list == {}
    puts "You do not have any stock"
  else
   puts "You are holding:"
   stock_list.each do |ticker, num|
    if num != 0
     p "#{ticker}: #{num}"
    end
   end
 end
end

def stock_searching

 ticker = ""
 stock = nil

 while stock == nil
   system 'clear'
   ticker = asking_stock_ticker
   begin
     IEX::Resources::Quote.get(ticker)
   rescue
     puts "Sorry we cannot find the stock you are looking for"
   else
     stock = 1
     puts "#{ticker} currently is $#{stock_price(ticker)}"
   end
 end

end
