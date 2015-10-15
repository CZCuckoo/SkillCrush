class Posessions
  def set_name=(item)
    @item = item
  end
  def get_name
    return @item
  end
  def set_type=(object_type)
    @object_type = object_type
  end
  def get_type
    return @object_type
  end
end
class Books < Posessions
  def set_author=(author_name)
    @author = author_name
  end
  def get_author
    return @author
  end
  def set_genre=(genre)
    @genre = genre
  end
  def get_genre
    return @genre
  end
end
class BoardGames < Posessions
  def set_number_of_players=(player_number)
    @player_number = player_number
  end
  def get_number_of_players
    return @player_number
  end
  def set_publisher=(publisher)
    @publisher = publisher
  end
  def set_number_of_players
    return @number
  end
end
my_game = BoardGames.new
my_game.set_name = "Puerto Rico"
my_game.set_type = "Board Game"
my_game.set_number_of_players = 5
my_game.set_publisher = "Rio Grande"
puts my_game.inspect
