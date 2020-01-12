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
    self.artist = Song.new
  end

  def songs
    Song.all.select {|songs| song.artist == self}
  end

  # iterates over that artist's songs and collects the genre of each song.
  def genres
    
  end


end
