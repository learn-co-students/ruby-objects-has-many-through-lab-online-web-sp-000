require 'pry'

class Song 
  attr_accessor :name, :artist, :genre 
 
  
  
  def initialize(name, artist)
   @@all = [] 
   @name = name 
   @artist = artist 
 end 
 
 
 def song(name, artist, genre)
   Song.new(name, artist, genre)
  end 
end 
