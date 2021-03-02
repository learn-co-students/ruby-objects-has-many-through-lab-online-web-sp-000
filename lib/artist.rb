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


def songs(name, artist)
   @@all.select |song|
    artist.song 
end 


def new_song(name, genre)
  Song.new(name, genre, self)
end 
end 
 
