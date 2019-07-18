require 'pry'

class Artist
  attr_accessor :songs, :genre, :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end

  def new_song(name, genre)
    new_song = Song.new(name, self, genre)
    @songs << new_song
    new_song
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def genres
    artist_songs = songs()
    artist_songs.collect do |song|
      song.genre 
    end
  end

  def self.all
    @@all
  end

end
