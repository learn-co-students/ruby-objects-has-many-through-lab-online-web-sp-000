require 'pry'

class Genre 
  attr_accessor :name  
  @@all = []
  
  
  def initialize(name)
    @name = name 
    @@all << self 
  end
  
  
  def Songs(name, artist)
    Songs.new(name, artist, self) 
  end 
end 