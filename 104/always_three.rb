def always_three(number)
  (((number + 5) * 2 - 4) / 2 - number)
end
puts "Give me a number!"
x = gets.to_i
puts "Always " + always_three(x).to_s
