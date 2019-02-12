require "pry"

class Genre
  
  @@all = []
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def songs 
    Song.all do |s|
      s.genre == self
    end
  end
  
  def artists
    Artist.all do |a|
      a.genre == self
    end
  end
  
  def self.all
    @@all
  end
  
  
  
end