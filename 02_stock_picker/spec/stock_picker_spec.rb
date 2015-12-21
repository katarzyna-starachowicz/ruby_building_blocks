require './lib/stock_picker'

# Implement a method #stock_picker that takes in an array of stock prices,
# one for each hypothetical day. 
# It should return a pair of days representing the best day to buy
# and the best day to sell. Days start at 0.

describe "return a pair of days representing the best day to buy and the best day to sell" do

  it "for a profit of $15 - $3 == $12" do
    sp = stock_picker([17,3,6,9,15,8,6,1,10])
    sp.should == [1,4]
  end

  it "for a profit of $1000 - $2 == $998" do
    sp = stock_picker([30,47,5,2,13,72,31,1000])
    sp.should == [3,7]
  end

  it "for a profit of $15 - $3 == $12" do
    sp = stock_picker([25,312,580,96,333,16,996])
    sp.should == [5,6]
  end

end