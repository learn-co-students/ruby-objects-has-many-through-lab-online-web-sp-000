class Genre
  attr_accessor :name, :song

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

#iterates over the genre's collection of songs and collects the artist that owns each song
  def artists
    Song.all.collect {|song| song.artist}
  end

#iterates through all songs and finds the songs that belong to that genre
  def songs
    Song.all.select {|song| song.genre == self}
  end


end
