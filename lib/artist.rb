require 'pry'
class Artist 
  attr_accessor :name, :genre, :song, :artist, :genre  
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all 
    @@all  
  end 
  
  def new_song(name, genre)
    Song.new(name,self, genre) 
  end 
  
 def songs
   Song.all  
 end 
  
 def genres 
   Genre.all 
 end 
  
end 