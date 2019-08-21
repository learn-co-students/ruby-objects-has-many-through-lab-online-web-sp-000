require "pry"
class Artist
  attr_accessor :name, :genre
  
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
      d_song.artist.name == self.name
    end
  end
  
  def new_song(a_name, a_genre)
    Song.new(a_name, self, a_genre)
  end
  
  def genres
    genre_arr = []
    songs.each do |d_song|
      genre_arr << d_song.genre
    end
    genre_arr
  end
  
end
  