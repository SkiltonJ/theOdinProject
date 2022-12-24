array = [5,2,19,24,3,6,1,8,4,7,66]

def stock_picker(array)
  best_days = [0, 0]
  max_profit = 0

  array.each_with_index do |price, buy_day|
    (buy_day...price.size).each do |sell_day|
      profit = array[sell_day] - price
      if profit > max_profit
        max_profit = profit
        best_days = [buy_day, sell_day]
      end
    end
  end
  best_days
end

puts stock_picker(array)
