require 'pry'

class Genre 
  attr_accessor :song, :artist 
  @@all = []
  
  
  def initialize(song, artist)
    @song = song 
    @artist = artist 
    @@all << self 
  end
  
  
  def Songs(name, artist)
    Songs.new(name, artist, self) 
  end 
end 