def find_anagram(input)
  test = input.split(//)
  test = test.permutation.map(&:join)
end



require_relative 'reverse_letters'

def find_anagram(letters)
  length = letters.length
  letters = letters.split("")

  anagrams = []

  letters.each_with_index do |letter, index|
    remaining_letters = letters.select {|l| l != letter}
    anagrams << letter + remaining_letters.join

    anagrams << letter + reverse_letters(remaining_letters).join
  end
  anagrams
end



#
#
# method takes a string as an argument
#   method(argument)
# splits string in to array using .split split(",")
#   split = argument.split(//)
#
#
#
#
# returns array of strings
#
#
#
# .select
# .join
#
# test = ["a", "b", "c"]
# test2[0] = test.join
# test2[1] = test.reverse.join
#
#
# test.permutation.to_a
#   returns [["a", "b", "c"] ["b", "a", "c"]]
#
