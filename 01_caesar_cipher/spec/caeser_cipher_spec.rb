# http://www.theodinproject.com/ruby-programming/building-blocks
# Project 1: Caesar Cipher

require "./lib/caesar_cipher"

describe "translator from english to caesar_cipher" do

  it "translates a string with a right shift of 5" do
    c = caesar_cipher("What a string!", 5)
    c.should == "Bmfy f xywnsl!"
  end

  it "translates a string with a right shift of 3" do
    c = caesar_cipher("What a string!", 3)
    c.should == "Zkdw d vwulqj!"
  end

  it "translates a string with a left shift of 2" do
    c = caesar_cipher("What a string!", -2)
    c.should == "Ufyr y qrpgle!"
  end

  it "translates a string with a right shift of 55" do
    c = caesar_cipher("What a string!", 55)
    c.should == "Zkdw d vwulqj!"
  end

    it "translates a string with a left shift of 55" do
    c = caesar_cipher("What a string!", -55)
    c.should == "Texq x pqofkd!"
  end

end