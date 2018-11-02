require 'pry'

class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end

  def self.all
    @@all
  end

  def songs
    @songs
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def genres
    genres = songs.map{|song| song.genre}
    genres.uniq
  end
end
