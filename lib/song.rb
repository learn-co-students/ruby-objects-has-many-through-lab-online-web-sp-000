class Song
  attr_accessor :name, :genre, :artist
  @@all = []
  def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    artist.songs << self
    artist.genres << genre
    genre.songs << self
    genre.artists << artist
    @@all << self
  end
  def self.all
    @@all
  end
end
