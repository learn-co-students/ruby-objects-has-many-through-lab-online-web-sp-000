require 'pry'

class Genre
  attr_accessor :name, :songs

ALL = []

  def initialize(name, songs=[])
    @name = name
    @songs = []

    ALL << self
  end

  def songs
    Song.all do |song|
       songs.genre
     end
  end

  def self.all
    ALL
  end

  def add_song(song)
    @songs << song
  end

  def artists
    Artist.all do |song|
      song.artist
    end
  end
end
