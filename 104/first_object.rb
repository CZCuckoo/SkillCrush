class CampingGear

  def set_name=(camping_item)
    @camping_item = camping_item
  end

  def get_name
    return @camping_item
  end

  def set_owner=(owner_name)
    @owner_name = owner_name
  end

  def get_owner
    return @owner_name
  end

  def packed
    return "is packed."
  end

  def notpacked
    return "is not packed."
  end
end


my_item = CampingGear.new
my_item.set_name = "lantern"
my_item.set_owner = "Clint"

her_item = CampingGear.new
her_item.set_name = "compass"
her_item.set_owner = "Erika"

my_item_name = my_item.get_name
her_item_name = her_item.get_name

puts "I will be sure to pack a #{my_item_name} when going camping."
puts "I will be sure to pack a #{her_item_name} when going camping."

puts my_item.inspect
