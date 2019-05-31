class Genre
  @@all = []
  attr_accessor :name, :song, :artist

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select {|tripp| tripp.genre == self}
  end

  def artists
    songs.collect {|tripp| tripp.artist}
  end
end
