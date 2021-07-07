class Genre
  require 'pry'
  
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def songs
    Song.all.select do |x|
      x.genre == self
    end
  end
  
  
  def artists
    Song.all.collect do |x|
      x.artist
    end
  end
  
  def self.all
    @@all
  end
  
end