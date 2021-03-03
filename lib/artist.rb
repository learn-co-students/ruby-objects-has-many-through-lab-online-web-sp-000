require 'pry' 

class Artist 
  attr_accessor :name  
  @@all = [] 


def initialize(name)
  @name = name 
  @@all << self 
 end 

 
def self.all 
 @@all 
end 


def songs
   Song.all.select|song|
   song.name
   end 


  def new_song(name)
    Song.all.new(name, genre)
  end 

  def genres(song, artist) 
   Genres.new(song,self, name)
  end 
end 
 