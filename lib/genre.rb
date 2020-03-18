class Genre 
  attr_accessor :songs, :artist, :name
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end
  
  def self.all 
    @@all 
  end
  
  def songs 
    @songs 
  end
    
  def new_song(name, genre)
    Song.new()
    
    def new_meal(waiter, total, tip=0)
    Meal.new(waiter, self, total, tip)
  end
end