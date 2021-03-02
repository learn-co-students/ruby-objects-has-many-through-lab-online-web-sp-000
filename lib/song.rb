require 'pry'

class Song 
  attr_accessor :name 
  @@all = []
  
  
  def initialize(name, artist, genre)
   @name = name 
   @artist = artist 
   @genre = genre 
   @@all << self 
 end 
 
 def self.all 
   @@all 
 end 
 
 
 def song(name, artist, genre)
   Song.new(name, artist, genre, self) 
  end 
end 
