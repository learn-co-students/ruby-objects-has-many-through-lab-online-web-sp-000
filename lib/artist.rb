require 'pry'

class Artist
  attr_accessor :songs, :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all.each do |artist|
      artist
    end
  end
  
  def new_song(name, genre)
    # binding.pry
    Song.new(name, self, genre)
  end
  
  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end
  
  def genres
    # genres = []
    # Song.all.each do |song|
    #   genres << song.genre if song.artist.name == self.name
    # end
    # genres
    
    songs.map do |song|
      song.genre
      # binding.pry
    end
  end
end