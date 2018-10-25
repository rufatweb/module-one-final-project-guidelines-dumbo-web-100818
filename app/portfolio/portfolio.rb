require 'pry'
def user_transactions
 $user.transactions
end


def get_ticker(stock_id)
  Stock.find(stock_id).ticker
end
# get_ticker(1)
def stock_list
  stock = {}
  user_transactions.each do |t|
    if stock[get_ticker(t.stock_id)] == nil
      stock[get_ticker(t.stock_id)] = t.number_of_stocks
    else
      stock[get_ticker(t.stock_id)] += t.number_of_stocks
    end
  end
  stock
  end
