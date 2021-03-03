require 'pry'

class Song 
  attr_accessor :name, :artist, :genre 
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
 
 
 def new_song(name, artist, genre)
   Song.new(name, artist, genre) 
  end 
  
  def genre(song)
    
  end 

  def artist(name)
    
  end 
end 