tasks = [
  "Farm boy, polish my horse's saddle. I want to see my face shining in it by morning.",
  "Farm boy, fill these with water - please.",
  "Farm boy... fetch me that pitcher.",
]
total_tasks = tasks.size
i = 0
puts tasks[i]
puts "As you wish? Y/N:"
answer = gets.chomp.downcase
while (answer == "y" && i <= total_tasks)
  puts tasks[i]
  i += 1
end
