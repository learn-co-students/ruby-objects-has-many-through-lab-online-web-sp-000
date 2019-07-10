require "pry"
class Genre

  attr_accessor :name, :artist, :song
  @@all = []

  def initialize(name)
    @@all << self
    @name = name

  end

  def self.all
    @@all
  end

  def new_song(name, artist)
    new_song = Song.new(name, artist, self)
  end

  def songs
    # binding.pry
    Song.all.select do |song|
      song.genre == self
    end
  end

  def artists
      songs.map do |o|
      o.artist
    end
  end

end
