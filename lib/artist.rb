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
  Song.all.select do |song|
  johnny_cash = Artist.new("Johnny Cash")
  johnny_cash.song
end 
end 
 
   
  def new_song(name, genre) 
    Song.new(name, genre)
  end

  def genres(song, artist) 
   Genres.new(song,self, name)
  end 
end 
 