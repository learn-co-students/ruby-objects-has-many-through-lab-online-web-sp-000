
class Artist
  @@all =  []
  attr_reader :name
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_song(name, genre_oi)
    Song.new(name, self, genre_oi)
  end
  
  def songs
    Song.all.select {|i| i.artist == self}
  end
  
  def genres
    self.songs.map {|i| i.genre}
  end
end
