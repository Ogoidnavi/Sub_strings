dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
def substrings(string, dictionary)
  result = Hash.new(0)
  downcased_word = string.downcase

  dictionary.each do |word|
    match = downcased_word.scan(word).count
    result[word] = match unless match ==0
  end

  return result
end
  
p substrings("below", dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)