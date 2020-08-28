require 'pry'
class Artist
  attr_accessor :name, :song, :genre
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def genres
    songs.collect do |song|
      song.genre
    end
  end

  def new_song(song, genre)
    Song.new(song, self, genre)
  end

  def self.all
    @@all
  end
end
