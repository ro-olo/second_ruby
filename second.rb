dictionary =["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings (word, dictionary)
    dictionary.reduce(Hash.new(0)) do |result, substring|
    word_downcase = word.downcase
    substring_downcase = substring.downcase
    if word_downcase.include?(substring_downcase)
    result [substring] += 1
    end
    result
    end
end

puts substrings("below", dictionary)
puts substrings("Sit down", dictionary)