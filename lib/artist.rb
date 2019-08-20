require "pry"
class Artist
  attr_accessor :name
  
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @all
  end
  
  def songs
    Songs.all.select do |d_song|
      d_song.name == self.name
    end
  end
  
  def genre
    songs.each do |d_song|
    end
  end
  
end
  