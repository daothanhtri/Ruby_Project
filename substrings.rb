dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, array)
    array.reduce(Hash.new(0)) do |hash, dict_word|
        string.downcase.split.each do |word|
            word.include?(dict_word) ? hash[dict_word] += 1 : nil
        end
        hash
    end
end

p substrings("Howdy partner, sit down! How's it going?", dictionary)