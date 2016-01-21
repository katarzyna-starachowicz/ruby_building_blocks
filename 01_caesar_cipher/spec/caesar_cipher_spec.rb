# http://www.theodinproject.com/ruby-programming/building-blocks
# Project 1: Caesar Cipher

require "./lib/caesar_cipher"

describe "translator from english to caesar cipher" do
  context "with right shift" do
    it "translates a single lowercase word" do
      c = caesar_cipher("string", 5)
      expect(c).to eql("xywnsl")
    end

    it "translates a single uppercase word" do
      c = caesar_cipher("WHAT", 5)
      expect(c).to eql("BMFY")
    end

    it "translates the whole sentence" do
      c = caesar_cipher("What, a string?!", 3)
      expect(c).to eql("Zkdw, d vwulqj?!")
    end

    it "allows shift greater than 26" do
      c = caesar_cipher("What a string!", 55)
      expect(c).to eql("Zkdw d vwulqj!")
    end
  end

  context "without shift" do
    it "doesn't translate" do
      c = caesar_cipher("What a string!", 0)
      expect(c).to eql("What a string!")
    end
  end

  context "with left shift" do
    it "translates a whole sentence" do
      c = caesar_cipher("What a string!", -2)
      expect(c).to eql("Ufyr y qrpgle!")
    end

    it "allows shift greater than 26" do
      c = caesar_cipher("What a string!", -55)
      c.should == "Texq x pqofkd!"
    end
  end

end