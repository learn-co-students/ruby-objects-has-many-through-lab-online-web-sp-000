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
    self == song.artist
end 
end 

 
   
  def new_song(name, genre) 
    Song.new(name, self, genre)
  end

  def genres
    songs.select do |song|
    song.genre
  end 
 end 
 end 