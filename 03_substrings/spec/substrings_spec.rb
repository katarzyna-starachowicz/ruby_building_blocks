require './lib/substrings'

# takes a word as the first argument and then an array of valid substrings (your dictionary) 
# as the second argument. It should return a hash listing each substring (case insensitive) 
# that was found in the original string and how many times it was found.


describe "substrings" do

  it "says how many bustrings of given words are in dictionary" do
    s = substrings("below")
    s.should == {"below"=>1, "low"=>1}
  end

  it "can handle multiple words" do
    s = substrings("Howdy partner, sit down! How's it going?")
    s.should == {"down"=>1, "how"=>2, "howdy"=>1,"go"=>1, "going"=>1, "it"=>2, "i"=> 3, "own"=>1,"part"=>1,"partner"=>1,"sit"=>1}
  end

end