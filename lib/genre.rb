require 'pry'
class Genre 
  
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self  
  end 
  
  def songs 
    Song.all.select{|song| song.genre == self}
  end 
  
  def artists  
    Artist.all.select{|artist| artist.genre == self}
  end 
  
  def self.all 
    @@all 
  end 
  
  def artists 
    songs.map{|x| x.artist}
  end 
  
  
end