def substrings(string)
  dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  result = {}
  dictionary.each do |substring|
    number = string.downcase.scan(/(?=#{substring})/).count
    result[substring] = number if number > 0
  end
  result
end