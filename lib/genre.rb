class Genre 
  
  attr_accessor :artist, :genre, :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def songs 
    song.all.select { |s| s.genre == self}
  end
  
  def artists
    songs.all.collect { |g| a.genre == self}
  end 
end
  
 