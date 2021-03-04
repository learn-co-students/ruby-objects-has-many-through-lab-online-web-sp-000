require 'pry'

class Genre 
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
    Song.all.map do |song|
    song
  end
end 


  def artists 
    songs.map do |genre|
    genre.artist
    end 
  end
end
 
