class Song 
  attr_accessor :name, :artist, :genre
  
  @@all = []
  
  def initialize(song_name, artist, genre)
    @name = song_name
    @artist = artist 
    @genre = genre
    @@all << self 
  end 
  
  def self.artist
    @artist
  end 
  
  def self.all
    @@all
  end 
  
  def self.genre 
    @genre
  end 
end 