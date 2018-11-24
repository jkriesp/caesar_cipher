def stock_picker(stock)
  max_profit = stock[1] - stock[0]
  sell_day = stock[0]
  buy_day = stock[0]
  profit_array = [buy_day, sell_day]

  stock.each do |x|
    sub_array = stock.drop(stock.index(x))
    sub_array.each do |y|
      if (y - sub_array[0]) > max_profit
        max_profit = y - sub_array[0] if (y - sub_array[0]) > max_profit
        buy_day = stock.index(x)
        sell_day = stock.index(y)
        profit_array = [buy_day, sell_day]
      end
    end
  
  end
  p profit_array
  puts "Profit $#{max_profit}"
end

stock_picker([17,3,6,9,15,8,6,1,10])