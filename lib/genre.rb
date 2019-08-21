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
      d_song.genre.name == self.name
    end
  end
  
  def artists
    artist_arr = []
    songs.each do |d_song|
      artist_arr << d_song.artist
    end
    artist_arr
  end

end