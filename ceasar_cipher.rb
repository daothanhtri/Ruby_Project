require 'pry'
require 'pry-byebug'

def caesar_cipher(string, k)
    result = ""
    alphabet = ('a'..'z').to_a
    string.each_char do |char|
      if alphabet.any?(char.downcase)
        index = (alphabet.find_index(char.downcase) + k) % 26
        char = char == char.upcase ? alphabet[index].upcase : alphabet[index]
      end
      result += char
    end
    result
end

 
p caesar_cipher("What a string!", 5)