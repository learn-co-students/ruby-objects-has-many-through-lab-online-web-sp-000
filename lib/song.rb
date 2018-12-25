class Song
  attr_accessor :name, :artist, :genre
  @@all = []

  def initialize(name, artist, genre)
    self.name = name
    
    genre.songs << self
    artist.genres << genre
    self.genre = genre
    
    artist.songs << self
    genre.artists << artist
    self.artist = artist
    
    @@all << self
  end

  def self.all
    @@all
  end
  
end
