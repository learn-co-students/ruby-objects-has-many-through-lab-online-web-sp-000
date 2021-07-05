require 'pry'
class Artist
  attr_accessor :name, :songs, :genre

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def new_song(name, genre)
    Song.new(name,self, genre)
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def genres
    songs.map {|song| song.genre}
  end

  #class methods
  def self.all
    @@all
  end

end
