class CampingGear

attr_accessor :name, :owner

end

my_item = CampingGear.new
my_item.name = "lantern"
my_item.owner = "Clint"

her_item = CampingGear.new
her_item.name = "compass"
her_item.owner = "Erika"

my_item_name = my_item.name
her_item_name = her_item.name

puts "I will be sure to pack a #{my_item_name} when going camping."
puts "I will be sure to pack a #{her_item_name} when going camping."


puts my_item.inspect
puts her_item.inspect
