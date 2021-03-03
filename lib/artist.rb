require 'pry' 

class Artist 
  attr_accessor :name, :song  
  @@all = [] 


def initialize(name)
  @name = name 
  @@all << self 
 end 


def self.all 
 @@all 
end 


def songs(name)
   Song.all.select |song|
    artist.song 
end 


  def new_song(name)
    Song.all.new(name, genre)
  end 

  def genres(song, artist) 
   Genres.new(song,self, name)
  end 
end 
 