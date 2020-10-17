class Genre
  attr_accessor :name, :songs
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
    Song.all
  end

  def artists
    self.songs.collect do |song|
      song.artist
    end
  end
end
