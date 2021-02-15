class Song 
  attr_accessor :title, :artist, :genre 
  
  @@all = []
  
  def initialize(title, artist, genre)
    @artist = artist 
    @genre = genre 
    @title = title  
    @@all << self 
  end 
  
  def self.all
    @@all
  end 
  
end 
