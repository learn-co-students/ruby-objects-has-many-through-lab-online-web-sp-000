require "pry"
class Genre 
attr_accessor :name 

@@all = []

  def initialize(name)
  @name = name
  @@all << self
  @songs = []
  end
  
  def self.all
    @@all
  end
  
  def songs 
   @songs
  end
  
  def artists
    artists = songs.map {|s| s.artist}
    artists
  end
  
  
end
