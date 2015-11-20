def find_anagram(input)
  test = input.split(//)
  test2 = Array.new
  test2 = test.permutation.map(&:join)
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
