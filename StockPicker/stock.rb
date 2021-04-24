def stock_picker(array)
  low, high = array[0], 0
  array.each do |num|
    low = num if num < low
    high = num if num > high
  end
  print [low, high], "\n"
end

prices = [17,3,6,9,15,8,6,1,10]
stock_picker(prices)