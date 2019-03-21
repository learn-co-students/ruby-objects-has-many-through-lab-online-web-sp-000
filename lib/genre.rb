require "pry"

class Genre
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select do |song|
      song.genre.name = self.name
    end
  end

  def artists
    Song.all.collect do |song|
      # binding.pry
      song.artist
    end

  end
end
