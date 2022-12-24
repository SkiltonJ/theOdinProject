def substrings(word, dictionary)
  result = Hash.new(0)
  lowered_word = word.downcase

  dictionary.each do |e|
    matches = lowered_word.scan(e).count
    result[e] = matches unless matches == 0
  end

  return result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("Howdy partner, sit down! How's it going?", dictionary)
