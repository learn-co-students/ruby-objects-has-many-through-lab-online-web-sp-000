
class Genre
  @@all = []
  
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def songs
    Song.all.select {|i| i.genre == self}
  end
  
  def artists
    self.songs.map {|i| i.artist}
  end
  
end

  