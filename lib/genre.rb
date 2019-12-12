class Genre
  attr_accessor :songs, :name, :artist
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select do |genre|
      genre.artist
    end
  end

  def artists
    songs.collect do |song|
      song.artist
    end
  end

end
