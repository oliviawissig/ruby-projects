## Short program that returns lowest and highest stock prices from an array
## returns an array with the lowest price at index 0 and highest price at index 1
def stock_picker(array)
  low, high = array[0], 0
  array.each_with_index do |num, index|
    low = num if num < low
    high = num if num > high
  end
  [low, high]
end

prices = [26.74,40.96,16.99,24.34,20.02,55.24,36.84,29.10]
buy_sell = stock_picker(prices)

print "Prices: ", prices, "\n"
print "The best time to buy is $" + (buy_sell[0]).to_s + ". "
print "The best time to sell is $" + (buy_sell[1]).to_s + "\n"