class Artist 
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end
  
  def self.all
    @@all
  end
  
  def songs 
    Song.all.select {|song| song.artist == self} 
  end
    
  def new_song(name, genre)
    
  end
    def new_meal(waiter, total, tip=0)
    Meal.new(waiter, self, total, tip)
  end
  
end