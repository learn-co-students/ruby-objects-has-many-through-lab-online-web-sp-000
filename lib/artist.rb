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
  song = Song.new 
  song
  end


  def new_song(name, genre) 
    Song.new(name, genre)
  end

  def genres(song, artist) 
   Genres.new(song,self, name)
  end 
end 
 