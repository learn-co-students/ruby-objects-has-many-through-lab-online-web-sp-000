class Genre
  attr_accessor :name, :genre, :artists, :songs

  @@all = []

  def initialize(name)
    @name = name
    @genre = genre
    @artists = artists
    @songs = songs
    @@all << self
  end
  #
  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

  def artists
    songs.collect do |song|
      song.artist
    end
  end

  def self.all
    @@all
  end
end
