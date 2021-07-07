require 'pry'
class Artist
  attr_accessor :name, :songs 
  @@all =[]
  
  def initialize(name)
    @name = name
    @@all << self 
  end 
  
  def self.all
    @@all
  end 
  
  def songs
    Song.all.collect do |song|
     if song.artist == self 
       song 
     end 
    end 
  end 
  
  def new_song(name, genre)
    Song.new(name, self, genre)
  end 
    
  def genres
    Genre.all
  end 
end 