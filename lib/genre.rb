require 'pry'

class Genre
attr_accessor :name, :artist    
  @@all = Array.new 

  def initialize(name)
    @name = name 
    @artist = artist 
    @@all << self 
  end 

  def self.all  
    @@all 
  end 

  def songs 
    
    Song.all.each do |name, artist, genre|
      if genre == self  
        p name 
      end 
    end 
  end 


  def artists 
    
    self.songs.map do |song|
      song.artist 
    end 
  end 







end 