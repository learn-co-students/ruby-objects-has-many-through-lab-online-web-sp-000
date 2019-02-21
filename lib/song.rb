class Song
  attr_reader :name, :genre
  attr_accessor :artist
  @@all = []
  def initialize(name, artist, genre)
    @artist = artist
    @name = name
    @genre = genre
    @@all << self
  end
  
  def self.all
    @@all
  end
end