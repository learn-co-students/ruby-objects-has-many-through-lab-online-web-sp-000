class Genre 
  attr_accessor :name
  @@all = []
  
  def self.all 
    @@all
  end 
  
  def initialize (name)
    @name = name
    @@all << self 
  end 
  
  def songs 
    Song.all.select do |songs| songs.genre == self
  end 
    
  end 
  
  def artists
    self.songs.collect do |song| song.artist 
  end 
    
  end 
  
end 