require 'pry' 

class Artist 
  attr_accessor :name
  @@all = [] 


def initialize(name)
  @name = name 
 end 


def all 
  @all << self 
end


def songs(name, artist, genre)
  @all.select |song|
    artist.song 
end 


def new_song(name, genre)
  Song.new(name, genre) 
end 
end 
 
