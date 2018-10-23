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
   $user.cash
   user_homepage
  when  "2"
   p "Nothing yet"
   user_homepage
  when  "3"
   p "buy_stock"
   user_homepage
 when  "4"
   p "sell_stock"
   user_homepage
 end
   # binding.pry

end
