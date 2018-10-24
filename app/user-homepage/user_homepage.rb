require 'pry'
def user_homepage
  puts "1. Checking the current user cash
        2. Checking stocks holding
        3. Buy stock
        4. Sell stock"

  user_input = gets.chomp
   # binding.pry
  case user_input
  when  "1"
   puts "Your current cash balance is $#{$user.cash}"
   user_homepage
  when  "2"
    # puts "#{stock_list.keys[0]}"
    if stock_list == {}
      puts "You do not have any stock"
    else
     puts "You are holding:"
     stock_list.each do |ticker, num|
      if num != 0
       puts "#{ticker}: #{num}"
      end
     end
   end

   user_homepage

  when  "3"
    buy_stock
   user_homepage

 when  "4"
   sell_stock
   user_homepage
 end
   # binding.pry

end
