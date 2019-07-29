class Song 
  
  attr_accessor :name, :artist, :genre, :songs
  @@all = []
  
  def initialize(name,artist,genre)
    @name = name 
    @artist = artist
    @songs = songs
    @genre = genre
    @@all << self
  end
  
  def self.all
     @@all
  end
  
end