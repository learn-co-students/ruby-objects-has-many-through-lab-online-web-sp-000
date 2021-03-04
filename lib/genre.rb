require 'pry'

class Genre 
  attr_accessor :name  
  @@all = []
  
  
  def initialize(name)
    @name = name 
    @@all << self 
  end
  
  
  def songs
    Song.all.map do |song|
    self.song 
  end 
end 
end 
