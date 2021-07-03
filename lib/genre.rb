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

  # iterates through all songs and finds the songs that belong to that genre.
  def songs
    Song.all.select {|songs| songs.genre == self }
  end

  # iterates over the genre's collection of songs and collects the artist that owns each song.
  # self => #<Genre:0x0000000001656430 @name="rap">
  def artists
    self.songs.collect do |song|
			song.artist
		end
  end


end
