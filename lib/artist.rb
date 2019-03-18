require "pry"

class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    song = Song.new(name, self, genre)
    song
  end

  def songs
    Song.all.select do |song|
      # binding.pry
      song.artist.name == self.name
    end
  end

  def genres
    songs.map do |song|
      binding.pry
      song.genre
    end
  end
end
