require "pry"
class Song
  attr_accessor :name, :artist, :genre
  
  @@all = []
  def initialize (name, artist, genre)
    @@all << self
  end
  
  def self.all
    @@all
  end
  
end