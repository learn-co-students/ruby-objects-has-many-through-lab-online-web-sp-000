class Song
  @@all = []
  attr_accessor :name, :artist, :genre
  
  def initialize(name, artist_oi, genre_oi)
    @name = name
    @artist = artist_oi
    @genre = genre_oi
    @@all << self
  end
  
  def self.all
    @@all
  end
end
