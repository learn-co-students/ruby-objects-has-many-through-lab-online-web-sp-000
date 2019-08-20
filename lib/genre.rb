require "pry"
class Genre
  attr_accessor :artist, :genre
  
  @@all = []
  def initialize
    @all << self
  end
  
  def self.all
    @@all
  end
  
  def songs
    Songs.all.select do |d_song|
      d_song.name == self.name
    end
  end
  
  def artists
    self.all.select do |d_genre|
      d_genre.songs.name == artists.name
    end
  end
  
end