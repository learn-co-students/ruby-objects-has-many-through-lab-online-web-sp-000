require "pry"
class Genre
  attr_accessor :name, :artist
  
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def songs
    Song.all.select do |d_song|
      d_song.name == self.name
    end
  end
  
  def artists
    self.all.select do |d_genre|
      d_genre.songs.name == artists.name
    end
  end
  
end